import 'package:remas_land/core/database/app_database.dart' as db;
import 'package:remas_land/core/database/daos/wallet_dao.dart';
import 'package:remas_land/core/errors/failures.dart';
import 'package:remas_land/core/storage/prefs_service.dart';
import 'package:remas_land/features/wallet/domain/wallet_entity.dart';
import 'package:remas_land/features/wallet/domain/wallet_repository.dart';

/// Drift + SharedPreferences backed implementation of [WalletRepository].
class WalletRepositoryImpl implements WalletRepository {
  const WalletRepositoryImpl({
    required this.walletDao,
    required this.prefs,
  });

  final WalletDao walletDao;
  final PrefsService prefs;

  @override
  Stream<WalletEntity> watchWallet() {
    return walletDao.watchWalletAccount().map(
          (row) => WalletEntity(
            id: row.id,
            balancePiasters: row.balancePiasters,
            isPrivilegeActive: row.isPrivilegeActive,
            cardLast4: row.cardLast4,
            cardHolder: row.cardHolder,
            cardExpiry: row.cardExpiry,
            cashbackPercent: row.cashbackPercent,
          ),
        );
  }

  @override
  Stream<List<WalletTransactionEntity>> watchTransactions({int? limit}) {
    return walletDao.watchTransactions(limit: limit).map(
          (rows) => rows
              .map(
                (row) => WalletTransactionEntity(
                  id: row.id,
                  title: row.title,
                  subtitle: row.subtitle,
                  amountPiasters: row.amountPiasters,
                  type: row.type,
                  statusLabel: row.statusLabel,
                  referenceCode: row.referenceCode,
                  createdAt: row.createdAt,
                ),
              )
              .toList(),
        );
  }

  @override
  Stream<List<SavedCardEntity>> watchSavedCards() {
    return walletDao.watchSavedCards().map(
          (rows) => rows
              .map(
                (row) => SavedCardEntity(
                  id: row.id,
                  brand: row.brand,
                  last4: row.last4,
                  expiry: row.expiry,
                  holderName: row.holderName,
                  isDefault: row.isDefault,
                ),
              )
              .toList(),
        );
  }

  @override
  bool isBalanceHidden() => prefs.isBalanceHidden();

  @override
  Future<void> setBalanceHidden(bool hidden) => prefs.setBalanceHidden(hidden);

  @override
  Future<void> topUp({
    required int amountPiasters,
    required String sourceLabel,
  }) {
    return guardDatabaseCall(() async {
      if (amountPiasters <= 0) {
        throw const ValidationFailure('Top-up amount must be greater than zero.');
      }
      await walletDao.topUp(
        amountPiasters: amountPiasters,
        sourceLabel: sourceLabel,
      );
    });
  }

  @override
  Future<void> sendQuickTransfer({
    required int amountPiasters,
    required String title,
    required String subtitle,
  }) {
    return guardDatabaseCall(() async {
      if (amountPiasters <= 0) {
        throw const ValidationFailure('Amount must be greater than zero.');
      }
      try {
        await walletDao.recordQuickTransfer(
          amountPiasters: amountPiasters,
          title: title,
          subtitle: subtitle,
        );
      } on StateError catch (error) {
        throw ValidationFailure(error.message);
      }
    });
  }

  @override
  Future<void> activatePrivilegeCard() {
    return guardDatabaseCall(walletDao.activatePrivilegeCard);
  }

  @override
  Future<void> addSavedCard({
    required String brand,
    required String last4,
    required String expiry,
    required String holderName,
  }) {
    return guardDatabaseCall(() async {
      final id = 'card_${DateTime.now().microsecondsSinceEpoch}';
      await walletDao.addSavedCard(
        db.SavedCardsCompanion.insert(
          id: id,
          brand: brand,
          last4: last4,
          expiry: expiry,
          holderName: holderName,
        ),
      );
    });
  }

  @override
  Future<void> deleteSavedCard(String cardId) {
    return guardDatabaseCall(() => walletDao.deleteSavedCard(cardId));
  }
}
