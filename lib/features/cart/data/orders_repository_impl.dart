import 'package:drift/drift.dart';

import 'package:remas_land/core/database/app_database.dart' as db;
import 'package:remas_land/core/database/daos/cart_dao.dart';
import 'package:remas_land/core/database/daos/orders_dao.dart';
import 'package:remas_land/core/errors/failures.dart';
import 'package:remas_land/core/storage/prefs_service.dart';
import 'package:remas_land/features/cart/data/cart_mapper.dart';
import 'package:remas_land/features/cart/domain/cart_repository.dart';
import 'package:remas_land/features/cart/domain/order_entity.dart';

/// Drift-backed implementation of [OrdersRepository].
class OrdersRepositoryImpl implements OrdersRepository {
  const OrdersRepositoryImpl({
    required this.ordersDao,
    required this.cartDao,
    required this.cartRepository,
    required this.prefs,
  });

  final OrdersDao ordersDao;
  final CartDao cartDao;
  final CartRepository cartRepository;
  final PrefsService prefs;

  @override
  Stream<List<OrderEntity>> watchOrders() {
    return ordersDao.watchOrders().map(
          (rows) => rows.map(CartMapper.orderToEntity).toList(),
        );
  }

  @override
  Stream<int> watchActiveOrdersCount() => ordersDao.watchActiveOrdersCount();

  @override
  Future<OrderEntity> placeOrder({
    required String addressSummary,
    required String paymentMethod,
    required bool payWithWallet,
  }) {
    return guardDatabaseCall(() async {
      final summary = await cartRepository.watchCartSummary().first;
      if (summary.items.isEmpty) {
        throw const ValidationFailure('Cannot place an order with an empty cart.');
      }

      final now = DateTime.now();
      final orderId = 'ord_${now.microsecondsSinceEpoch}';
      final orderNumber = '#RM-${1000 + (now.millisecondsSinceEpoch % 9000)}';

      try {
        final created = await ordersDao.createOrder(
          order: db.OrdersCompanion.insert(
            id: orderId,
            orderNumber: orderNumber,
            status: 'preparing',
            addressSummary: addressSummary,
            paymentMethod: paymentMethod,
            subtotalPiasters: summary.subtotalPiasters,
            deliveryFeePiasters: summary.deliveryFeePiasters,
            packagingFeePiasters: summary.packagingFeePiasters,
            discountPiasters: summary.promoDiscountPiasters,
            totalPiasters: summary.totalPiasters,
            promoCode: Value(summary.appliedPromo?.code),
          ),
          items: summary.items
              .map(
                (item) => db.OrderItemsCompanion.insert(
                  orderId: orderId,
                  productId: item.product.id,
                  productName: item.product.name,
                  unitLabel: item.product.unitLabel,
                  imageAsset: item.product.imageAsset,
                  unitPricePiasters: item.product.pricePiasters,
                  quantity: item.quantity,
                ),
              )
              .toList(),
          payWithWallet: payWithWallet,
        );
        await prefs.setActivePromoCode(null);
        return CartMapper.orderToEntity(created);
      } on StateError catch (error) {
        throw ValidationFailure(error.message);
      }
    });
  }

  @override
  Future<void> reorder(OrderEntity order) {
    return guardDatabaseCall(() async {
      for (final item in order.items) {
        await cartDao.addOrIncrement(item.productId, delta: item.quantity);
      }
    });
  }
}
