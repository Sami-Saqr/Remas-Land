// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_dao.dart';

// ignore_for_file: type=lint
mixin _$WalletDaoMixin on DatabaseAccessor<AppDatabase> {
  $WalletAccountsTable get walletAccounts => attachedDatabase.walletAccounts;
  $WalletTransactionsTable get walletTransactions =>
      attachedDatabase.walletTransactions;
  $SavedCardsTable get savedCards => attachedDatabase.savedCards;
  WalletDaoManager get managers => WalletDaoManager(this);
}

class WalletDaoManager {
  final _$WalletDaoMixin _db;
  WalletDaoManager(this._db);
  $$WalletAccountsTableTableManager get walletAccounts =>
      $$WalletAccountsTableTableManager(
        _db.attachedDatabase,
        _db.walletAccounts,
      );
  $$WalletTransactionsTableTableManager get walletTransactions =>
      $$WalletTransactionsTableTableManager(
        _db.attachedDatabase,
        _db.walletTransactions,
      );
  $$SavedCardsTableTableManager get savedCards =>
      $$SavedCardsTableTableManager(_db.attachedDatabase, _db.savedCards);
}
