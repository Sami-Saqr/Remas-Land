import 'package:remas_land/features/account/domain/account_entity.dart';

/// Abstract repository contract for profile, addresses, and local settings.
abstract interface class AccountRepository {
  Stream<UserProfileEntity> watchProfile();
  Future<void> updateProfile({required String fullName, required String phone});
  Stream<List<AddressEntity>> watchAddresses();
  Stream<AddressEntity?> watchDefaultAddress();
  Future<void> setDefaultAddress(String addressId);
  Future<void> saveAddress(AddressEntity address);
  Future<void> deleteAddress(String addressId);
  UserSettingsEntity getSettings();
  Future<void> setColdPackagingAlert(bool enabled);
  Future<void> setDietaryLactoseFree(bool enabled);
}
