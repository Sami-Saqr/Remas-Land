import 'package:drift/drift.dart';

import 'package:remas_land/core/constants/app_assets.dart';
import 'package:remas_land/core/constants/app_constants.dart';
import 'package:remas_land/core/database/app_database.dart';
import 'package:remas_land/core/database/seed/seed_categories_brands_banners.dart';
import 'package:remas_land/core/database/seed/seed_products_data.dart';
import 'package:remas_land/core/storage/prefs_service.dart';

/// Idempotent first-launch database seeder for Remas Land.
class DatabaseSeeder {
  const DatabaseSeeder({
    required this.db,
    this.prefs,
  });

  final AppDatabase db;
  final PrefsService? prefs;

  /// Seeds initial catalog, cart, wallet, orders, and account data once.
  ///
  /// Safe to invoke multiple times; skips if already seeded.
  Future<void> seedIfNeeded() async {
    final prefsVersion = prefs?.getSeedVersion() ?? 0;
    if (prefsVersion >= AppConstants.currentSeedVersion) {
      return;
    }

    final existingCategories = await db.select(db.categories).get();
    if (existingCategories.isNotEmpty) {
      await prefs?.setSeedVersion(AppConstants.currentSeedVersion);
      return;
    }

    await db.transaction(() async {
      for (final category in SeedCatalogMeta.categories()) {
        await db.into(db.categories).insertOnConflictUpdate(category);
      }
      for (final brand in SeedCatalogMeta.brands()) {
        await db.into(db.brands).insertOnConflictUpdate(brand);
      }
      for (final product in SeedProductsData.products()) {
        await db.into(db.products).insertOnConflictUpdate(product);
      }
      for (final banner in SeedCatalogMeta.banners()) {
        await db.into(db.banners).insertOnConflictUpdate(banner);
      }

      await _seedUserAndAddresses();
      await _seedWalletAndCards();
      await _seedPromoCodesAndFavorites();
      await _seedInitialCartAndOrders();
    });

    await prefs?.setSeedVersion(AppConstants.currentSeedVersion);
  }

  Future<void> _seedUserAndAddresses() async {
    await db.into(db.userProfiles).insertOnConflictUpdate(
          const UserProfilesCompanion(
            id: Value('default'),
            fullName: Value('Kareem Tarek'),
            phone: Value('+20 100 123 4567'),
            tierLabel: Value('Baladi Milk Club • Tier 2'),
            avatarAsset: Value(AppAssets.userAvatar),
            hasMorningPass: Value(true),
            rewardsCount: Value(2),
            referralCode: Value('REMAS-KAREEM'),
          ),
        );

    await db.into(db.addresses).insertOnConflictUpdate(
          const AddressesCompanion(
            id: Value('addr_zamalek'),
            label: Value('Home'),
            street: Value('26th of July St, Apt 12'),
            area: Value('Zamalek'),
            city: Value('Cairo'),
            etaText: Value('15-25 min'),
            isDefault: Value(true),
          ),
        );
    await db.into(db.addresses).insertOnConflictUpdate(
          const AddressesCompanion(
            id: Value('addr_maadi'),
            label: Value('Work'),
            street: Value('Road 9, Building 44'),
            area: Value('Maadi'),
            city: Value('Cairo'),
            etaText: Value('25-35 min'),
            isDefault: Value(false),
          ),
        );
  }

  Future<void> _seedWalletAndCards() async {
    await db.into(db.walletAccounts).insertOnConflictUpdate(
          const WalletAccountsCompanion(
            id: Value('default'),
            balancePiasters: Value(125000), // 1,250.00 EGP
            isPrivilegeActive: Value(false),
            cardLast4: Value('4829'),
            cardHolder: Value('KAREEM T.'),
            cardExpiry: Value('08/28'),
            cashbackPercent: Value(5),
          ),
        );

    final now = DateTime.now();
    await db.into(db.walletTransactions).insertOnConflictUpdate(
          WalletTransactionsCompanion(
            id: const Value('tx_seed_1'),
            title: const Value('Dairy Restock: Baladi Buffalo Milk & Qishta'),
            subtitle: const Value('Cashback +12.25'),
            amountPiasters: const Value(-24500),
            type: const Value('purchase'),
            statusLabel: const Value('Completed'),
            createdAt: Value(now.subtract(const Duration(hours: 3))),
          ),
        );
    await db.into(db.walletTransactions).insertOnConflictUpdate(
          WalletTransactionsCompanion(
            id: const Value('tx_seed_2'),
            title: const Value('Top-up via Fawry Outlet'),
            subtitle: const Value('Ref #93021'),
            amountPiasters: const Value(50000),
            type: const Value('topup'),
            statusLabel: const Value('Success'),
            referenceCode: const Value('#93021'),
            createdAt: Value(now.subtract(const Duration(days: 1, hours: 2))),
          ),
        );
    await db.into(db.walletTransactions).insertOnConflictUpdate(
          WalletTransactionsCompanion(
            id: const Value('tx_seed_3'),
            title: const Value('Zamalek Patisserie: Honey Qashtouta'),
            subtitle: const Value('Remas Card'),
            amountPiasters: const Value(-18000),
            type: const Value('purchase'),
            statusLabel: const Value('Completed'),
            createdAt: Value(now.subtract(const Duration(days: 4))),
          ),
        );
    await db.into(db.walletTransactions).insertOnConflictUpdate(
          WalletTransactionsCompanion(
            id: const Value('tx_seed_4'),
            title: const Value('Monthly Cream Loyalty Bonus'),
            subtitle: const Value('Privilege Tier'),
            amountPiasters: const Value(7500),
            type: const Value('reward'),
            statusLabel: const Value('Reward'),
            createdAt: Value(now.subtract(const Duration(days: 8))),
          ),
        );

    await db.into(db.savedCards).insertOnConflictUpdate(
          const SavedCardsCompanion(
            id: Value('card_visa_4829'),
            brand: Value('Visa'),
            last4: Value('4829'),
            expiry: Value('08/28'),
            holderName: Value('KAREEM TAREK'),
            isDefault: Value(true),
          ),
        );
    await db.into(db.savedCards).insertOnConflictUpdate(
          const SavedCardsCompanion(
            id: Value('card_mc_9104'),
            brand: Value('Mastercard'),
            last4: Value('9104'),
            expiry: Value('11/27'),
            holderName: Value('KAREEM TAREK'),
            isDefault: Value(false),
          ),
        );
  }

  Future<void> _seedPromoCodesAndFavorites() async {
    await db.into(db.promoCodes).insertOnConflictUpdate(
          const PromoCodesCompanion(
            code: Value('FRESH15'),
            title: Value('15% Off Morning Dairy'),
            description: Value('Save 15% on orders above 150 EGP'),
            discountType: Value('percent'),
            discountValue: Value(15),
            minOrderPiasters: Value(15000),
          ),
        );
    await db.into(db.promoCodes).insertOnConflictUpdate(
          const PromoCodesCompanion(
            code: Value('FARM53'),
            title: Value('53 EGP Farmhouse Credit'),
            description: Value('Instant 53.00 EGP off your fresh dairy basket'),
            discountType: Value('fixed'),
            discountValue: Value(5300),
            minOrderPiasters: Value(20000),
          ),
        );

    for (final favId in const [
      'prod_buffalo_milk_1500',
      'prod_qashtouta_lotus',
      'prod_aged_rumi',
    ]) {
      await db.into(db.favorites).insertOnConflictUpdate(
            FavoritesCompanion(productId: Value(favId)),
          );
    }
  }

  Future<void> _seedInitialCartAndOrders() async {
    // 3 cart items matching Figma "Cart with Products" (4 total units across 3 SKUs)
    await db.into(db.cartItems).insertOnConflictUpdate(
          const CartItemsCompanion(
            productId: Value('prod_buffalo_milk_1500'),
            quantity: Value(2),
          ),
        );
    await db.into(db.cartItems).insertOnConflictUpdate(
          const CartItemsCompanion(
            productId: Value('prod_qashtouta_lotus'),
            quantity: Value(1),
          ),
        );
    await db.into(db.cartItems).insertOnConflictUpdate(
          const CartItemsCompanion(
            productId: Value('prod_buffalo_butter_500'),
            quantity: Value(1),
          ),
        );

    final now = DateTime.now();
    await db.into(db.orders).insertOnConflictUpdate(
          OrdersCompanion(
            id: const Value('ord_4821'),
            orderNumber: const Value('#RM-4821'),
            status: const Value('on_the_way'),
            addressSummary: const Value('Zamalek, 26th of July St, Cairo'),
            paymentMethod: const Value('Remas Wallet'),
            subtotalPiasters: const Value(21000),
            deliveryFeePiasters:
                const Value(AppConstants.standardDeliveryFeePiasters),
            packagingFeePiasters:
                const Value(AppConstants.coldPackagingFeePiasters),
            discountPiasters: const Value(0),
            totalPiasters: const Value(24500),
            createdAt: Value(now.subtract(const Duration(hours: 3))),
          ),
        );
    await db.into(db.orderItems).insert(
          OrderItemsCompanion.insert(
            orderId: 'ord_4821',
            productId: 'prod_buffalo_milk_1500',
            productName: 'Fresh Baladi Buffalo Milk (1.5L)',
            unitLabel: '1.5L Eco Bottle',
            imageAsset: AppAssets.prodBuffaloMilk,
            unitPricePiasters: 4800,
            quantity: 3,
          ),
        );
    await db.into(db.orderItems).insert(
          OrderItemsCompanion.insert(
            orderId: 'ord_4821',
            productId: 'prod_baladi_qishta',
            productName: 'Authentic Baladi Qishta (250g)',
            unitLabel: '250g Artisanal Clay Tub',
            imageAsset: AppAssets.prodBaladiQishta,
            unitPricePiasters: 6500,
            quantity: 1,
          ),
        );
    await db.into(db.orders).insertOnConflictUpdate(
          OrdersCompanion(
            id: const Value('ord_4819'),
            orderNumber: const Value('#RM-4819'),
            status: const Value('preparing'),
            addressSummary: const Value('Zamalek, 26th of July St, Cairo'),
            paymentMethod: const Value('Cash on Delivery'),
            subtotalPiasters: const Value(14500),
            deliveryFeePiasters:
                const Value(AppConstants.standardDeliveryFeePiasters),
            packagingFeePiasters:
                const Value(AppConstants.coldPackagingFeePiasters),
            discountPiasters: const Value(0),
            totalPiasters: const Value(18000),
            createdAt: Value(now.subtract(const Duration(days: 1))),
          ),
        );
    await db.into(db.orderItems).insert(
          OrderItemsCompanion.insert(
            orderId: 'ord_4819',
            productId: 'prod_aged_rumi',
            productName: 'Aged Egyptian Rumi Cheese',
            unitLabel: '350g Hand Cut Wedge',
            imageAsset: AppAssets.prodRumiCheese,
            unitPricePiasters: 14500,
            quantity: 1,
          ),
        );
  }
}
