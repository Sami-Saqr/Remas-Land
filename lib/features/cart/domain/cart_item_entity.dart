import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:remas_land/features/catalog/domain/product_entity.dart';

part 'cart_item_entity.freezed.dart';

/// Cart line item combining a [ProductEntity] with its quantity.
@freezed
abstract class CartItemEntity with _$CartItemEntity {
  const factory CartItemEntity({
    required ProductEntity product,
    required int quantity,
  }) = _CartItemEntity;

  const CartItemEntity._();

  int get lineTotalPiasters => product.pricePiasters * quantity;
  int get lineSavingsPiasters => product.savingsPiasters * quantity;
}

/// Active promo code entity.
@freezed
abstract class PromoCodeEntity with _$PromoCodeEntity {
  const factory PromoCodeEntity({
    required String code,
    required String title,
    required String description,
    required String discountType,
    required int discountValue,
    required int minOrderPiasters,
    required bool isActive,
  }) = _PromoCodeEntity;
}

/// Computed cart totals in integer piasters.
@freezed
abstract class CartSummaryEntity with _$CartSummaryEntity {
  const factory CartSummaryEntity({
    required List<CartItemEntity> items,
    required int distinctItemCount,
    required int totalUnits,
    required int subtotalPiasters,
    required int deliveryFeePiasters,
    required int packagingFeePiasters,
    required int itemDiscountSavingsPiasters,
    required int promoDiscountPiasters,
    required int totalPiasters,
    PromoCodeEntity? appliedPromo,
  }) = _CartSummaryEntity;
}
