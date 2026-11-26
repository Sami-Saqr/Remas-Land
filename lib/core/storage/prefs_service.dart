import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remas_land/core/errors/failures.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Overridden in `main.dart` with the initialized [SharedPreferences] instance.
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError(
    'sharedPreferencesProvider must be overridden in ProviderScope.',
  );
});

/// Provider for [PrefsService].
final prefsServiceProvider = Provider<PrefsService>((ref) {
  return PrefsService(ref.watch(sharedPreferencesProvider));
});

/// Lightweight preferences wrapper backed by [SharedPreferences].
class PrefsService {
  const PrefsService(this._prefs);

  final SharedPreferences _prefs;

  static const String _keySeedVersion = 'seed_version';
  static const String _keyBalanceHidden = 'wallet_balance_hidden';
  static const String _keyActivePromoCode = 'cart_active_promo_code';
  static const String _keyColdPackagingAlert = 'pref_cold_packaging_alert';
  static const String _keyDietaryLactoseFree = 'pref_dietary_lactose_free';

  int getSeedVersion() => _prefs.getInt(_keySeedVersion) ?? 0;

  Future<void> setSeedVersion(int version) async {
    try {
      await _prefs.setInt(_keySeedVersion, version);
    } on Exception catch (error) {
      throw StorageFailure('Unable to save seed version: $error');
    }
  }

  bool isBalanceHidden() => _prefs.getBool(_keyBalanceHidden) ?? false;

  Future<void> setBalanceHidden(bool hidden) async {
    try {
      await _prefs.setBool(_keyBalanceHidden, hidden);
    } on Exception catch (error) {
      throw StorageFailure('Unable to update balance visibility: $error');
    }
  }

  String? getActivePromoCode() => _prefs.getString(_keyActivePromoCode);

  Future<void> setActivePromoCode(String? code) async {
    try {
      if (code == null || code.isEmpty) {
        await _prefs.remove(_keyActivePromoCode);
      } else {
        await _prefs.setString(_keyActivePromoCode, code);
      }
    } on Exception catch (error) {
      throw StorageFailure('Unable to save promo code: $error');
    }
  }

  bool getColdPackagingAlert() =>
      _prefs.getBool(_keyColdPackagingAlert) ?? true;

  Future<void> setColdPackagingAlert(bool enabled) async {
    try {
      await _prefs.setBool(_keyColdPackagingAlert, enabled);
    } on Exception catch (error) {
      throw StorageFailure('Unable to save packaging alert setting: $error');
    }
  }

  bool getDietaryLactoseFree() =>
      _prefs.getBool(_keyDietaryLactoseFree) ?? false;

  Future<void> setDietaryLactoseFree(bool enabled) async {
    try {
      await _prefs.setBool(_keyDietaryLactoseFree, enabled);
    } on Exception catch (error) {
      throw StorageFailure('Unable to save dietary preference: $error');
    }
  }
}
