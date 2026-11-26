import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:remas_land/core/database/database_provider.dart';
import 'package:remas_land/core/storage/prefs_service.dart';
import 'package:remas_land/features/cart/data/cart_repository_impl.dart';
import 'package:remas_land/features/cart/data/orders_repository_impl.dart';
import 'package:remas_land/features/cart/domain/cart_item_entity.dart';
import 'package:remas_land/features/cart/domain/cart_repository.dart';
import 'package:remas_land/features/cart/domain/order_entity.dart';
import 'package:remas_land/features/catalog/domain/product_entity.dart';

/// Override-friendly provider for [CartRepository].
final cartRepositoryProvider = Provider<CartRepository>((ref) {
  final repo = CartRepositoryImpl(
    cartDao: ref.watch(cartDaoProvider),
    catalogDao: ref.watch(catalogDaoProvider),
    prefs: ref.watch(prefsServiceProvider),
  );
  ref.onDispose(repo.dispose);
  return repo;
});

/// Override-friendly provider for [OrdersRepository].
final ordersRepositoryProvider = Provider<OrdersRepository>((ref) {
  return OrdersRepositoryImpl(
    ordersDao: ref.watch(ordersDaoProvider),
    cartDao: ref.watch(cartDaoProvider),
    cartRepository: ref.watch(cartRepositoryProvider),
    prefs: ref.watch(prefsServiceProvider),
  );
});

final cartSummaryProvider = StreamProvider<CartSummaryEntity>((ref) {
  return ref.watch(cartRepositoryProvider).watchCartSummary();
});

final cartTotalUnitsProvider = StreamProvider<int>((ref) {
  return ref.watch(cartRepositoryProvider).watchTotalUnits();
});

final pairingSuggestionsProvider = StreamProvider<List<ProductEntity>>((ref) {
  return ref.watch(cartRepositoryProvider).watchPairingSuggestions();
});

final availablePromosProvider = StreamProvider<List<PromoCodeEntity>>((ref) {
  return ref.watch(cartRepositoryProvider).watchAvailablePromos();
});

final ordersListProvider = StreamProvider<List<OrderEntity>>((ref) {
  return ref.watch(ordersRepositoryProvider).watchOrders();
});

final activeOrdersCountProvider = StreamProvider<int>((ref) {
  return ref.watch(ordersRepositoryProvider).watchActiveOrdersCount();
});
