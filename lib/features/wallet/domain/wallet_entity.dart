import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_entity.freezed.dart';

/// Local wallet & Remas Privilege card state (balance in integer piasters).
@freezed
abstract class WalletEntity with _$WalletEntity {
  const factory WalletEntity({
    required String id,
    required int balancePiasters,
    required bool isPrivilegeActive,
    required String cardLast4,
    required String cardHolder,
    required String cardExpiry,
    required int cashbackPercent,
  }) = _WalletEntity;
}

/// Single wallet ledger entry (amountPiasters signed).
@freezed
abstract class WalletTransactionEntity with _$WalletTransactionEntity {
  const factory WalletTransactionEntity({
    required String id,
    required String title,
    required String subtitle,
    required int amountPiasters,
    required String type,
    required String statusLabel,
    String? referenceCode,
    required DateTime createdAt,
  }) = _WalletTransactionEntity;
}

/// Locally saved payment card metadata.
@freezed
abstract class SavedCardEntity with _$SavedCardEntity {
  const factory SavedCardEntity({
    required String id,
    required String brand,
    required String last4,
    required String expiry,
    required String holderName,
    required bool isDefault,
  }) = _SavedCardEntity;
}
