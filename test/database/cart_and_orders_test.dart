import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remas_land/core/database/app_database.dart';
import 'package:remas_land/core/database/seed/database_seeder.dart';
import 'package:remas_land/core/errors/failures.dart';
import 'package:remas_land/core/storage/prefs_service.dart';
import 'package:remas_land/features/cart/data/cart_repository_impl.dart';
import 'package:remas_land/features/cart/data/orders_repository_impl.dart';
import 'package:remas_land/features/wallet/data/wallet_repository_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  late AppDatabase db;
  late PrefsService prefs;
  late CartRepositoryImpl cartRepo;
  late OrdersRepositoryImpl ordersRepo;
  late WalletRepositoryImpl walletRepo;

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    final sharedPrefs = await SharedPreferences.getInstance();
    prefs = PrefsService(sharedPrefs);
    db = AppDatabase.forTesting(NativeDatabase.memory());
    await DatabaseSeeder(db: db, prefs: prefs).seedIfNeeded();

    cartRepo = CartRepositoryImpl(
      cartDao: db.cartDao,
      catalogDao: db.catalogDao,
      prefs: prefs,
    );
    ordersRepo = OrdersRepositoryImpl(
      ordersDao: db.ordersDao,
      cartDao: db.cartDao,
      cartRepository: cartRepo,
      prefs: prefs,
    );
    walletRepo = WalletRepositoryImpl(
      walletDao: db.walletDao,
      prefs: prefs,
    );
  });

  tearDown(() async {
    cartRepo.dispose();
    await db.close();
  });

  test('Cart summary matches seeded totals and updates on add/update/remove',
      () async {
    final initial = await cartRepo.watchCartSummary().first;
    expect(initial.distinctItemCount, 3);
    expect(initial.totalUnits, 4);
    expect(initial.subtotalPiasters, 30600);
    expect(initial.totalPiasters, 34100);
    expect(initial.itemDiscountSavingsPiasters, 6800);

    await cartRepo.addOrIncrement('prod_clover_honey');
    final afterAdd = await cartRepo.watchCartSummary().first;
    expect(afterAdd.distinctItemCount, 4);
    expect(afterAdd.subtotalPiasters, 34100);

    await cartRepo.setQuantity('prod_clover_honey', 2);
    final afterSet = await cartRepo.watchCartSummary().first;
    expect(afterSet.subtotalPiasters, 37600);

    await cartRepo.removeItem('prod_clover_honey');
    final afterRemove = await cartRepo.watchCartSummary().first;
    expect(afterRemove.distinctItemCount, 3);
    expect(afterRemove.subtotalPiasters, 30600);
  });

  test('Promo code validation and order creation debit wallet & clear cart',
      () async {
    await expectLater(
      () => cartRepo.applyPromoCode('INVALID'),
      throwsA(isA<ValidationFailure>()),
    );

    final promo = await cartRepo.applyPromoCode('FARM53');
    expect(promo.code, 'FARM53');

    final withPromo = await cartRepo.watchCartSummary().first;
    expect(withPromo.promoDiscountPiasters, 5300);
    expect(withPromo.totalPiasters, 28800);

    final walletBefore = await walletRepo.watchWallet().first;
    final order = await ordersRepo.placeOrder(
      addressSummary: 'Zamalek, Cairo',
      paymentMethod: 'Remas Wallet',
      payWithWallet: true,
    );

    expect(order.totalPiasters, 28800);
    expect(order.items.length, 3);

    final cartAfter = await cartRepo.watchCartSummary().first;
    expect(cartAfter.items, isEmpty);

    final walletAfter = await walletRepo.watchWallet().first;
    expect(
      walletAfter.balancePiasters,
      walletBefore.balancePiasters - 28800,
    );

    await ordersRepo.reorder(order);
    final cartReordered = await cartRepo.watchCartSummary().first;
    expect(cartReordered.distinctItemCount, 3);
  });
}
