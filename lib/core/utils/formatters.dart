import 'package:intl/intl.dart';

import 'package:remas_land/core/constants/app_constants.dart';
import 'package:remas_land/core/constants/app_strings.dart';

/// Currency (piasters -> EGP) and date formatting helpers for Remas Land.
abstract final class AppFormatters {
  static final NumberFormat _groupedFormat = NumberFormat('#,##0.00', 'en_US');
  static final NumberFormat _compactFormat = NumberFormat('0.00', 'en_US');
  static final DateFormat _dateTimeFormat = DateFormat('MMM d, hh:mm a');

  /// Converts integer piasters to EGP decimal amount.
  static double piastersToEgp(int piasters) =>
      piasters / AppConstants.piastersPerEgp;

  /// Formats integer piasters with thousands separators (e.g. `1,250.00`).
  static String formatGroupedPiasters(int piasters) =>
      _groupedFormat.format(piastersToEgp(piasters));

  /// Formats integer piasters without grouping (e.g. `48.00`).
  static String formatPiasters(int piasters) =>
      _compactFormat.format(piastersToEgp(piasters));

  /// Formats integer piasters with currency suffix (e.g. `48.00 EGP`).
  static String formatPricePiasters(int piasters) =>
      '${formatPiasters(piasters)} ${AppStrings.currencyCode}';

  /// Formats a signed wallet transaction amount (e.g. `+ EGP 500.00` or `- EGP 245.00`).
  static String formatSignedWalletPiasters(int piasters) {
    final sign = piasters >= 0 ? '+' : '-';
    final absFormatted = formatGroupedPiasters(piasters.abs());
    return '$sign ${AppStrings.currencyCode} $absFormatted';
  }

  /// Formats a DateTime into a concise local display string.
  static String formatDateTime(DateTime dateTime) =>
      _dateTimeFormat.format(dateTime);
}
