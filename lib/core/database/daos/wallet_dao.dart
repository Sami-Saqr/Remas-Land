import 'package:drift/drift.dart';

import 'package:remas_land/core/database/app_database.dart';
import 'package:remas_land/core/database/tables/tables.dart';

part 'wallet_dao.g.dart';

/// Data access object for Remas Pay wallet, cards, and transaction history.
@DriftAccessor(tables: [WalletAccounts, WalletTransactions, SavedCards])
class WalletDao extends DatabaseAccessor<AppDatabase> with _$WalletDaoMixin {
  WalletDao(super.db);

  Stream<WalletAccount> watchWalletAccount() {
    return (select(walletAccounts)..where((t) => t.id.equals('default')))
        .watchSingle();
  }

  Stream<List<WalletTransaction>> watchTransactions({int? limit}) {
    final stmt = select(walletTransactions)
      ..orderBy([(t) => OrderingTerm.desc(t.createdAt)]);
    if (limit != null) {
      stmt.limit(limit);
    }
    return stmt.watch();
  }

  Stream<List<SavedCard>> watchSavedCards() {
    return select(savedCards).watch();
  }

  Future<void> topUp({
    required int amountPiasters,
    required String sourceLabel,
  }) async {
    await transaction(() async {
      final account = await (select(walletAccounts)
            ..where((t) => t.id.equals('default')))
          .getSingle();
      await (update(walletAccounts)..where((t) => t.id.equals('default')))
          .write(
        WalletAccountsCompanion(
          balancePiasters: Value(account.balancePiasters + amountPiasters),
        ),
      );
      final ref = '#${DateTime.now().millisecondsSinceEpoch % 100000}';
      await into(walletTransactions).insert(
        WalletTransactionsCompanion.insert(
          id: 'tx_${DateTime.now().microsecondsSinceEpoch}',
          title: 'Top-up via $sourceLabel',
          subtitle: 'Ref $ref',
          amountPiasters: amountPiasters,
          type: 'topup',
          statusLabel: 'Success',
          referenceCode: Value(ref),
        ),
      );
    });
  }

  Future<void> recordQuickTransfer({
    required int amountPiasters,
    required String title,
    required String subtitle,
  }) async {
    await transaction(() async {
      final account = await (select(walletAccounts)
            ..where((t) => t.id.equals('default')))
          .getSingle();
      if (account.balancePiasters < amountPiasters) {
        throw StateError('Insufficient wallet balance');
      }
      await (update(walletAccounts)..where((t) => t.id.equals('default')))
          .write(
        WalletAccountsCompanion(
          balancePiasters: Value(account.balancePiasters - amountPiasters),
        ),
      );
      await into(walletTransactions).insert(
        WalletTransactionsCompanion.insert(
          id: 'tx_${DateTime.now().microsecondsSinceEpoch}',
          title: title,
          subtitle: subtitle,
          amountPiasters: -amountPiasters,
          type: 'transfer',
          statusLabel: 'Completed',
        ),
      );
    });
  }

  Future<void> activatePrivilegeCard() async {
    await (update(walletAccounts)..where((t) => t.id.equals('default'))).write(
      const WalletAccountsCompanion(isPrivilegeActive: Value(true)),
    );
  }

  Future<void> addSavedCard(SavedCardsCompanion card) async {
    await into(savedCards).insertOnConflictUpdate(card);
  }

  Future<void> deleteSavedCard(String id) async {
    await (delete(savedCards)..where((t) => t.id.equals(id))).go();
  }
}
