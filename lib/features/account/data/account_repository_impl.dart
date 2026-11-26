import 'package:drift/drift.dart';

import 'package:remas_land/core/database/app_database.dart' as db;
import 'package:remas_land/core/database/daos/account_dao.dart';
import 'package:remas_land/core/errors/failures.dart';
import 'package:remas_land/core/storage/prefs_service.dart';
import 'package:remas_land/features/account/domain/account_entity.dart';
import 'package:remas_land/features/account/domain/account_repository.dart';

/// Drift + SharedPreferences backed implementation of [AccountRepository].
class AccountRepositoryImpl implements AccountRepository {
  const AccountRepositoryImpl({
    required this.accountDao,
    required this.prefs,
  });

  final AccountDao accountDao;
  final PrefsService prefs;

  @override
  Stream<UserProfileEntity> watchProfile() {
    return accountDao.watchUserProfile().map(
          (row) => UserProfileEntity(
            id: row.id,
            fullName: row.fullName,
            phone: row.phone,
            tierLabel: row.tierLabel,
            avatarAsset: row.avatarAsset,
            hasMorningPass: row.hasMorningPass,
            rewardsCount: row.rewardsCount,
            referralCode: row.referralCode,
          ),
        );
  }

  @override
  Future<void> updateProfile({
    required String fullName,
    required String phone,
  }) {
    return guardDatabaseCall(() async {
      if (fullName.trim().isEmpty) {
        throw const ValidationFailure('Name cannot be empty.');
      }
      await accountDao.updateUserProfile(
        fullName: fullName.trim(),
        phone: phone.trim(),
      );
    });
  }

  @override
  Stream<List<AddressEntity>> watchAddresses() {
    return accountDao.watchAddresses().map(
          (rows) => rows.map(_addressToEntity).toList(),
        );
  }

  @override
  Stream<AddressEntity?> watchDefaultAddress() {
    return accountDao.watchDefaultAddress().map(
          (row) => row == null ? null : _addressToEntity(row),
        );
  }

  @override
  Future<void> setDefaultAddress(String addressId) {
    return guardDatabaseCall(() => accountDao.setDefaultAddress(addressId));
  }

  @override
  Future<void> saveAddress(AddressEntity address) {
    return guardDatabaseCall(
      () => accountDao.upsertAddress(
        db.AddressesCompanion(
          id: Value(address.id),
          label: Value(address.label),
          street: Value(address.street),
          area: Value(address.area),
          city: Value(address.city),
          etaText: Value(address.etaText),
          isDefault: Value(address.isDefault),
        ),
      ),
    );
  }

  @override
  Future<void> deleteAddress(String addressId) {
    return guardDatabaseCall(() => accountDao.deleteAddress(addressId));
  }

  @override
  UserSettingsEntity getSettings() {
    return UserSettingsEntity(
      coldPackagingAlert: prefs.getColdPackagingAlert(),
      dietaryLactoseFree: prefs.getDietaryLactoseFree(),
    );
  }

  @override
  Future<void> setColdPackagingAlert(bool enabled) =>
      prefs.setColdPackagingAlert(enabled);

  @override
  Future<void> setDietaryLactoseFree(bool enabled) =>
      prefs.setDietaryLactoseFree(enabled);

  static AddressEntity _addressToEntity(db.Address row) {
    return AddressEntity(
      id: row.id,
      label: row.label,
      street: row.street,
      area: row.area,
      city: row.city,
      etaText: row.etaText,
      isDefault: row.isDefault,
    );
  }
}
