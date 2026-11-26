import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:remas_land/core/database/database_provider.dart';
import 'package:remas_land/core/storage/prefs_service.dart';
import 'package:remas_land/features/wallet/data/wallet_repository_impl.dart';
import 'package:remas_land/features/wallet/domain/wallet_entity.dart';
import 'package:remas_land/features/wallet/domain/wallet_repository.dart';

/// Override-friendly provider for [WalletRepository].
final walletRepositoryProvider = Provider<WalletRepository>((ref) {
  return WalletRepositoryImpl(
    walletDao: ref.watch(walletDaoProvider),
    prefs: ref.watch(prefsServiceProvider),
  );
});

final walletAccountProvider = StreamProvider<WalletEntity>((ref) {
  return ref.watch(walletRepositoryProvider).watchWallet();
});

final walletTransactionsProvider =
    StreamProvider<List<WalletTransactionEntity>>((ref) {
  return ref.watch(walletRepositoryProvider).watchTransactions();
});

final savedCardsProvider = StreamProvider<List<SavedCardEntity>>((ref) {
  return ref.watch(walletRepositoryProvider).watchSavedCards();
});
