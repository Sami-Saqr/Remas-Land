import 'package:remas_land/features/wallet/domain/wallet_entity.dart';

/// Abstract repository contract for Remas Pay & Wallet.
abstract interface class WalletRepository {
  Stream<WalletEntity> watchWallet();
  Stream<List<WalletTransactionEntity>> watchTransactions({int? limit});
  Stream<List<SavedCardEntity>> watchSavedCards();
  bool isBalanceHidden();
  Future<void> setBalanceHidden(bool hidden);
  Future<void> topUp({
    required int amountPiasters,
    required String sourceLabel,
  });
  Future<void> sendQuickTransfer({
    required int amountPiasters,
    required String title,
    required String subtitle,
  });
  Future<void> activatePrivilegeCard();
  Future<void> addSavedCard({
    required String brand,
    required String last4,
    required String expiry,
    required String holderName,
  });
  Future<void> deleteSavedCard(String cardId);
}
