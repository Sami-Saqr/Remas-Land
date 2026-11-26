import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'package:remas_land/core/constants/app_constants.dart';
import 'package:remas_land/core/database/daos/account_dao.dart';
import 'package:remas_land/core/database/daos/cart_dao.dart';
import 'package:remas_land/core/database/daos/catalog_dao.dart';
import 'package:remas_land/core/database/daos/orders_dao.dart';
import 'package:remas_land/core/database/daos/wallet_dao.dart';
import 'package:remas_land/core/database/tables/tables.dart';

part 'app_database.g.dart';

/// Local SQLite database powered by Drift for Remas Land.
@DriftDatabase(
  tables: [
    Categories,
    Brands,
    Products,
    Banners,
    CartItems,
    Favorites,
    Addresses,
    Orders,
    OrderItems,
    WalletAccounts,
    WalletTransactions,
    SavedCards,
    PromoCodes,
    UserProfiles,
  ],
  daos: [
    CatalogDao,
    CartDao,
    OrdersDao,
    WalletDao,
    AccountDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  /// Constructor for unit tests using an in-memory [QueryExecutor].
  AppDatabase.forTesting(super.executor);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
        onUpgrade: (m, from, to) async {
          // Future schema migrations will live here cleanly by version step.
        },
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, AppConstants.databaseFileName));
    return NativeDatabase.createInBackground(file);
  });
}
