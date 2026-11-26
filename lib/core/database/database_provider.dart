import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:remas_land/core/database/app_database.dart';
import 'package:remas_land/core/database/daos/account_dao.dart';
import 'package:remas_land/core/database/daos/cart_dao.dart';
import 'package:remas_land/core/database/daos/catalog_dao.dart';
import 'package:remas_land/core/database/daos/orders_dao.dart';
import 'package:remas_land/core/database/daos/wallet_dao.dart';

/// Root Drift [AppDatabase] provider (overrideable in tests with in-memory DB).
final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
});

final catalogDaoProvider = Provider<CatalogDao>(
  (ref) => ref.watch(appDatabaseProvider).catalogDao,
);

final cartDaoProvider = Provider<CartDao>(
  (ref) => ref.watch(appDatabaseProvider).cartDao,
);

final ordersDaoProvider = Provider<OrdersDao>(
  (ref) => ref.watch(appDatabaseProvider).ordersDao,
);

final walletDaoProvider = Provider<WalletDao>(
  (ref) => ref.watch(appDatabaseProvider).walletDao,
);

final accountDaoProvider = Provider<AccountDao>(
  (ref) => ref.watch(appDatabaseProvider).accountDao,
);
