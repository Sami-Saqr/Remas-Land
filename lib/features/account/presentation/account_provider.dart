import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:remas_land/core/database/database_provider.dart';
import 'package:remas_land/core/storage/prefs_service.dart';
import 'package:remas_land/features/account/data/account_repository_impl.dart';
import 'package:remas_land/features/account/domain/account_entity.dart';
import 'package:remas_land/features/account/domain/account_repository.dart';

/// Override-friendly provider for [AccountRepository].
final accountRepositoryProvider = Provider<AccountRepository>((ref) {
  return AccountRepositoryImpl(
    accountDao: ref.watch(accountDaoProvider),
    prefs: ref.watch(prefsServiceProvider),
  );
});

final userProfileProvider = StreamProvider<UserProfileEntity>((ref) {
  return ref.watch(accountRepositoryProvider).watchProfile();
});

final addressesProvider = StreamProvider<List<AddressEntity>>((ref) {
  return ref.watch(accountRepositoryProvider).watchAddresses();
});

final defaultAddressProvider = StreamProvider<AddressEntity?>((ref) {
  return ref.watch(accountRepositoryProvider).watchDefaultAddress();
});
