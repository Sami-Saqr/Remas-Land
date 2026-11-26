import 'package:drift/drift.dart';

import 'package:remas_land/core/database/app_database.dart';
import 'package:remas_land/core/database/tables/tables.dart';

part 'account_dao.g.dart';

/// Data access object for user profile and saved delivery addresses.
@DriftAccessor(tables: [UserProfiles, Addresses])
class AccountDao extends DatabaseAccessor<AppDatabase> with _$AccountDaoMixin {
  AccountDao(super.db);

  Stream<UserProfile> watchUserProfile() {
    return (select(userProfiles)..where((t) => t.id.equals('default')))
        .watchSingle();
  }

  Future<void> updateUserProfile({
    required String fullName,
    required String phone,
  }) async {
    await (update(userProfiles)..where((t) => t.id.equals('default'))).write(
      UserProfilesCompanion(
        fullName: Value(fullName),
        phone: Value(phone),
      ),
    );
  }

  Stream<List<Address>> watchAddresses() {
    return (select(addresses)
          ..orderBy([(t) => OrderingTerm.desc(t.isDefault)]))
        .watch();
  }

  Stream<Address?> watchDefaultAddress() {
    return (select(addresses)..where((t) => t.isDefault.equals(true)))
        .watchSingleOrNull();
  }

  Future<void> setDefaultAddress(String addressId) async {
    await transaction(() async {
      await update(addresses).write(
        const AddressesCompanion(isDefault: Value(false)),
      );
      await (update(addresses)..where((t) => t.id.equals(addressId))).write(
        const AddressesCompanion(isDefault: Value(true)),
      );
    });
  }

  Future<void> upsertAddress(AddressesCompanion entry) async {
    await transaction(() async {
      if (entry.isDefault.present && entry.isDefault.value) {
        await update(addresses).write(
          const AddressesCompanion(isDefault: Value(false)),
        );
      }
      await into(addresses).insertOnConflictUpdate(entry);
    });
  }

  Future<void> deleteAddress(String addressId) async {
    await (delete(addresses)..where((t) => t.id.equals(addressId))).go();
  }
}
