import 'package:drift/drift.dart';

import 'package:remas_land/core/database/app_database.dart';
import 'package:remas_land/core/database/tables/tables.dart';

part 'orders_dao.g.dart';

/// Order paired with its line items.
class OrderWithItems {
  const OrderWithItems({
    required this.order,
    required this.items,
  });

  final Order order;
  final List<OrderItem> items;
}

/// Data access object for local orders and checkout creation.
@DriftAccessor(
  tables: [Orders, OrderItems, CartItems, WalletAccounts, WalletTransactions],
)
class OrdersDao extends DatabaseAccessor<AppDatabase> with _$OrdersDaoMixin {
  OrdersDao(super.db);

  Stream<List<OrderWithItems>> watchOrders() {
    final ordersStream = (select(orders)
          ..orderBy([(t) => OrderingTerm.desc(t.createdAt)]))
        .watch();

    return ordersStream.asyncMap((orderList) async {
      final result = <OrderWithItems>[];
      for (final order in orderList) {
        final items = await (select(orderItems)
              ..where((t) => t.orderId.equals(order.id)))
            .get();
        result.add(OrderWithItems(order: order, items: items));
      }
      return result;
    });
  }

  Stream<int> watchActiveOrdersCount() {
    return (select(orders)
          ..where((t) => t.status.isIn(const ['preparing', 'on_the_way'])))
        .watch()
        .map((rows) => rows.length);
  }

  /// Creates an order, inserts line items, optionally debits wallet, and clears cart.
  Future<OrderWithItems> createOrder({
    required OrdersCompanion order,
    required List<OrderItemsCompanion> items,
    bool payWithWallet = false,
  }) async {
    return transaction(() async {
      if (payWithWallet) {
        final account = await (select(walletAccounts)
              ..where((t) => t.id.equals('default')))
            .getSingle();
        final total = order.totalPiasters.value;
        if (account.balancePiasters < total) {
          throw StateError('Insufficient wallet balance');
        }
        await (update(walletAccounts)..where((t) => t.id.equals('default')))
            .write(
          WalletAccountsCompanion(
            balancePiasters: Value(account.balancePiasters - total),
          ),
        );
        await into(walletTransactions).insert(
          WalletTransactionsCompanion.insert(
            id: 'tx_${DateTime.now().microsecondsSinceEpoch}',
            title: 'Order ${order.orderNumber.value}',
            subtitle: 'Remas Wallet',
            amountPiasters: -total,
            type: 'purchase',
            statusLabel: 'Completed',
            referenceCode: Value(order.orderNumber.value),
          ),
        );
      }

      await into(orders).insert(order);
      for (final item in items) {
        await into(orderItems).insert(item);
      }
      await delete(cartItems).go();

      final savedOrder = await (select(orders)
            ..where((t) => t.id.equals(order.id.value)))
          .getSingle();
      final savedItems = await (select(orderItems)
            ..where((t) => t.orderId.equals(order.id.value)))
          .get();

      return OrderWithItems(order: savedOrder, items: savedItems);
    });
  }
}
