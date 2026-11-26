import 'dart:async';

import 'package:remas_land/core/constants/app_constants.dart';
import 'package:remas_land/core/database/daos/cart_dao.dart';
import 'package:remas_land/core/database/daos/catalog_dao.dart';
import 'package:remas_land/core/errors/failures.dart';
import 'package:remas_land/core/storage/prefs_service.dart';
import 'package:remas_land/features/cart/data/cart_mapper.dart';
import 'package:remas_land/features/cart/domain/cart_item_entity.dart';
import 'package:remas_land/features/cart/domain/cart_repository.dart';
import 'package:remas_land/features/catalog/data/catalog_mapper.dart';
import 'package:remas_land/features/catalog/domain/product_entity.dart';

/// Drift + SharedPreferences backed implementation of [CartRepository].
class CartRepositoryImpl implements CartRepository {
  CartRepositoryImpl({
    required this.cartDao,
    required this.catalogDao,
    required this.prefs,
  });

  final CartDao cartDao;
  final CatalogDao catalogDao;
  final PrefsService prefs;
  final StreamController<void> _promoTrigger =
      StreamController<void>.broadcast();

  @override
  Stream<CartSummaryEntity> watchCartSummary() {
    return Stream<CartSummaryEntity>.multi((controller) {
      List<CartItemWithProduct> latestItems = const [];
      var hasReceived = false;

      Future<void> emitSummary() async {
        if (!hasReceived) return;
        try {
          final summary = await _buildSummary(latestItems);
          if (!controller.isClosed) {
            controller.add(summary);
          }
        } on Object catch (error, stack) {
          if (!controller.isClosed) {
            controller.addError(error, stack);
          }
        }
      }

      final cartSub = cartDao.watchCartItems().listen(
        (items) {
          latestItems = items;
          hasReceived = true;
          unawaited(emitSummary());
        },
        onError: controller.addError,
      );

      final promoSub = _promoTrigger.stream.listen((_) {
        unawaited(emitSummary());
      });

      controller.onCancel = () async {
        await cartSub.cancel();
        await promoSub.cancel();
      };
    });
  }

  Future<CartSummaryEntity> _buildSummary(List<CartItemWithProduct> rows) async {
    final items = rows.map(CartMapper.cartItemToEntity).toList();
    if (items.isEmpty) {
      return const CartSummaryEntity(
        items: [],
        distinctItemCount: 0,
        totalUnits: 0,
        subtotalPiasters: 0,
        deliveryFeePiasters: 0,
        packagingFeePiasters: 0,
        itemDiscountSavingsPiasters: 0,
        promoDiscountPiasters: 0,
        totalPiasters: 0,
      );
    }

    final totalUnits = items.fold<int>(0, (sum, i) => sum + i.quantity);
    final subtotal = items.fold<int>(0, (sum, i) => sum + i.lineTotalPiasters);
    final itemSavings =
        items.fold<int>(0, (sum, i) => sum + i.lineSavingsPiasters);

    PromoCodeEntity? appliedPromo;
    var promoDiscount = 0;
    final activeCode = prefs.getActivePromoCode();
    if (activeCode != null && activeCode.isNotEmpty) {
      final promoRow = await cartDao.getPromoByCode(activeCode);
      if (promoRow != null &&
          promoRow.isActive &&
          subtotal >= promoRow.minOrderPiasters) {
        appliedPromo = CartMapper.promoToEntity(promoRow);
        promoDiscount = promoRow.discountType == 'percent'
            ? (subtotal * promoRow.discountValue) ~/ 100
            : promoRow.discountValue;
        if (promoDiscount > subtotal) {
          promoDiscount = subtotal;
        }
      }
    }

    const deliveryFee = AppConstants.standardDeliveryFeePiasters;
    const packagingFee = AppConstants.coldPackagingFeePiasters;
    final total =
        (subtotal + deliveryFee + packagingFee - promoDiscount).clamp(0, 1 << 30);

    return CartSummaryEntity(
      items: items,
      distinctItemCount: items.length,
      totalUnits: totalUnits,
      subtotalPiasters: subtotal,
      deliveryFeePiasters: deliveryFee,
      packagingFeePiasters: packagingFee,
      itemDiscountSavingsPiasters: itemSavings,
      promoDiscountPiasters: promoDiscount,
      totalPiasters: total,
      appliedPromo: appliedPromo,
    );
  }

  @override
  Stream<int> watchTotalUnits() => cartDao.watchTotalQuantity();

  @override
  Stream<List<ProductEntity>> watchPairingSuggestions() {
    return catalogDao.watchPairingSuggestions().map(
          (rows) => rows.map(CatalogMapper.productToEntity).toList(),
        );
  }

  @override
  Stream<List<PromoCodeEntity>> watchAvailablePromos() {
    return cartDao.watchActivePromoCodes().map(
          (rows) => rows.map(CartMapper.promoToEntity).toList(),
        );
  }

  @override
  Future<void> addOrIncrement(String productId, {int delta = 1}) {
    return guardDatabaseCall(
      () => cartDao.addOrIncrement(productId, delta: delta),
    );
  }

  @override
  Future<void> setQuantity(String productId, int quantity) {
    return guardDatabaseCall(() => cartDao.setQuantity(productId, quantity));
  }

  @override
  Future<void> removeItem(String productId) {
    return guardDatabaseCall(() => cartDao.removeItem(productId));
  }

  @override
  Future<void> clearCart() {
    return guardDatabaseCall(() async {
      await cartDao.clearCart();
      await prefs.setActivePromoCode(null);
      _promoTrigger.add(null);
    });
  }

  @override
  Future<PromoCodeEntity> applyPromoCode(String code) {
    return guardDatabaseCall(() async {
      final normalized = code.trim().toUpperCase();
      if (normalized.isEmpty) {
        throw const ValidationFailure('Please enter a promo code.');
      }
      final promo = await cartDao.getPromoByCode(normalized);
      if (promo == null || !promo.isActive) {
        throw const ValidationFailure('Promo code not found or expired.');
      }
      await prefs.setActivePromoCode(promo.code);
      _promoTrigger.add(null);
      return CartMapper.promoToEntity(promo);
    });
  }

  @override
  Future<void> clearPromoCode() {
    return guardDatabaseCall(() async {
      await prefs.setActivePromoCode(null);
      _promoTrigger.add(null);
    });
  }

  void dispose() {
    unawaited(_promoTrigger.close());
  }
}
