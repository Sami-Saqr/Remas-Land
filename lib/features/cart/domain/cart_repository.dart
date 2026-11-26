import 'package:remas_land/features/cart/domain/cart_item_entity.dart';
import 'package:remas_land/features/cart/domain/order_entity.dart';
import 'package:remas_land/features/catalog/domain/product_entity.dart';

/// Abstract repository contract for cart management and promo codes.
abstract interface class CartRepository {
  Stream<CartSummaryEntity> watchCartSummary();
  Stream<int> watchTotalUnits();
  Stream<List<ProductEntity>> watchPairingSuggestions();
  Stream<List<PromoCodeEntity>> watchAvailablePromos();
  Future<void> addOrIncrement(String productId, {int delta = 1});
  Future<void> setQuantity(String productId, int quantity);
  Future<void> removeItem(String productId);
  Future<void> clearCart();
  Future<PromoCodeEntity> applyPromoCode(String code);
  Future<void> clearPromoCode();
}

/// Abstract repository contract for creating and viewing local orders.
abstract interface class OrdersRepository {
  Stream<List<OrderEntity>> watchOrders();
  Stream<int> watchActiveOrdersCount();
  Future<OrderEntity> placeOrder({
    required String addressSummary,
    required String paymentMethod,
    required bool payWithWallet,
  });
  Future<void> reorder(OrderEntity order);
}
