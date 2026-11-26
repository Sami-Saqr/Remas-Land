import 'package:drift/drift.dart';

import 'package:remas_land/core/database/app_database.dart';
import 'package:remas_land/core/database/tables/tables.dart';

part 'cart_dao.g.dart';

/// Joined cart row combining [CartItem] with its [Product].
class CartItemWithProduct {
  const CartItemWithProduct({
    required this.cartItem,
    required this.product,
  });

  final CartItem cartItem;
  final Product product;
}

/// Data access object for persistent shopping cart and promo codes.
@DriftAccessor(tables: [CartItems, Products, PromoCodes])
class CartDao extends DatabaseAccessor<AppDatabase> with _$CartDaoMixin {
  CartDao(super.db);

  Stream<List<CartItemWithProduct>> watchCartItems() {
    final query = select(cartItems).join([
      innerJoin(products, products.id.equalsExp(cartItems.productId)),
    ])
      ..orderBy([OrderingTerm.asc(cartItems.addedAt)]);

    return query.watch().map(
          (rows) => rows
              .map(
                (row) => CartItemWithProduct(
                  cartItem: row.readTable(cartItems),
                  product: row.readTable(products),
                ),
              )
              .toList(),
        );
  }

  Stream<int> watchTotalQuantity() {
    return select(cartItems).watch().map(
          (rows) => rows.fold<int>(0, (sum, item) => sum + item.quantity),
        );
  }

  Future<void> addOrIncrement(String productId, {int delta = 1}) async {
    await transaction(() async {
      final existing = await (select(cartItems)
            ..where((t) => t.productId.equals(productId)))
          .getSingleOrNull();

      if (existing == null) {
        if (delta > 0) {
          await into(cartItems).insert(
            CartItemsCompanion.insert(
              productId: productId,
              quantity: Value(delta),
            ),
          );
        }
        return;
      }

      final nextQty = existing.quantity + delta;
      if (nextQty <= 0) {
        await (delete(cartItems)..where((t) => t.productId.equals(productId)))
            .go();
      } else {
        await (update(cartItems)..where((t) => t.productId.equals(productId)))
            .write(CartItemsCompanion(quantity: Value(nextQty)));
      }
    });
  }

  Future<void> setQuantity(String productId, int quantity) async {
    if (quantity <= 0) {
      await removeItem(productId);
      return;
    }
    await (update(cartItems)..where((t) => t.productId.equals(productId)))
        .write(CartItemsCompanion(quantity: Value(quantity)));
  }

  Future<void> removeItem(String productId) async {
    await (delete(cartItems)..where((t) => t.productId.equals(productId))).go();
  }

  Future<void> clearCart() async {
    await delete(cartItems).go();
  }

  Stream<List<PromoCode>> watchActivePromoCodes() {
    return (select(promoCodes)..where((t) => t.isActive.equals(true))).watch();
  }

  Future<PromoCode?> getPromoByCode(String code) {
    return (select(promoCodes)
          ..where((t) => t.code.equals(code.trim().toUpperCase())))
        .getSingleOrNull();
  }
}
