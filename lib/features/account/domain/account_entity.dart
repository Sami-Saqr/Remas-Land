import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_entity.freezed.dart';

/// Local user profile entity.
@freezed
abstract class UserProfileEntity with _$UserProfileEntity {
  const factory UserProfileEntity({
    required String id,
    required String fullName,
    required String phone,
    required String tierLabel,
    required String avatarAsset,
    required bool hasMorningPass,
    required int rewardsCount,
    required String referralCode,
  }) = _UserProfileEntity;
}

/// Saved delivery address entity.
@freezed
abstract class AddressEntity with _$AddressEntity {
  const factory AddressEntity({
    required String id,
    required String label,
    required String street,
    required String area,
    required String city,
    required String etaText,
    required bool isDefault,
  }) = _AddressEntity;

  const AddressEntity._();

  String get shortDisplay => '$area, $street';
  String get cityDisplay => '$area, $city';
}

/// Lightweight local settings stored in SharedPreferences.
@freezed
abstract class UserSettingsEntity with _$UserSettingsEntity {
  const factory UserSettingsEntity({
    required bool coldPackagingAlert,
    required bool dietaryLactoseFree,
  }) = _UserSettingsEntity;
}
