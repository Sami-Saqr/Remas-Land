import 'package:flutter/material.dart';

import 'package:remas_land/app/theme/app_colors.dart';

/// Typography tokens extracted from Figma.
///
/// Uses bundled font families: `PlusJakartaSans` (primary), `PlayfairDisplay`
/// (category promo accent), and `LiberationMono` (digital card digits).
abstract final class AppTypography {
  static const String fontPrimary = 'PlusJakartaSans';
  static const String fontDisplaySerif = 'PlayfairDisplay';
  static const String fontMono = 'LiberationMono';

  static const TextStyle balanceHero = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 34,
    fontWeight: FontWeight.w800,
    height: 42 / 34,
    letterSpacing: -0.85,
    color: AppColors.inkPrimary,
  );

  static const TextStyle totalHero = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 26,
    fontWeight: FontWeight.w700,
    height: 39 / 26,
    color: AppColors.primary,
  );

  static const TextStyle pageTitle = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    height: 28 / 22,
    letterSpacing: -0.22,
    color: AppColors.inkPrimary,
  );

  static const TextStyle sectionTitle = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 19,
    fontWeight: FontWeight.w600,
    height: 25 / 19,
    letterSpacing: -0.19,
    color: AppColors.inkPrimary,
  );

  static const TextStyle bannerTitle = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 19,
    fontWeight: FontWeight.w700,
    height: 23.75 / 19,
    letterSpacing: -0.19,
    color: AppColors.onPrimary,
  );

  static const TextStyle appBarTitle = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 17,
    fontWeight: FontWeight.w700,
    height: 23.38 / 17,
    letterSpacing: -0.425,
    color: AppColors.inkPrimary,
  );

  static const TextStyle cardTitle = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 22 / 16,
    color: AppColors.inkPrimary,
  );

  static const TextStyle priceBold = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 22 / 16,
    color: AppColors.primary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
    color: AppColors.inkSecondary,
  );

  static const TextStyle bodySemiBold = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 20 / 14,
    color: AppColors.inkPrimary,
  );

  static const TextStyle categoryBannerSerif = TextStyle(
    fontFamily: fontDisplaySerif,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 17.5 / 14,
    color: AppColors.onPrimary,
  );

  static const TextStyle bodyCompact = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 13,
    fontWeight: FontWeight.w600,
    height: 18 / 13,
    letterSpacing: 0.13,
    color: AppColors.inkPrimary,
  );

  static const TextStyle gridCardTitle = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 13,
    fontWeight: FontWeight.w700,
    height: 17.88 / 13,
    color: AppColors.inkPrimary,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 16 / 12,
    color: AppColors.inkSecondary,
  );

  static const TextStyle chipLabel = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 16 / 12,
    color: AppColors.inkSecondary,
  );

  static const TextStyle micro = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    height: 16.5 / 11,
    color: AppColors.inkMuted,
  );

  static const TextStyle microBold = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 11,
    fontWeight: FontWeight.w700,
    height: 14 / 11,
    letterSpacing: 0.22,
    color: AppColors.inkPrimary,
  );

  static const TextStyle overline = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 10,
    fontWeight: FontWeight.w700,
    height: 12 / 10,
    letterSpacing: 0.45,
    color: AppColors.inkMuted,
  );

  static const TextStyle navLabel = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 10,
    fontWeight: FontWeight.w700,
    height: 12 / 10,
    letterSpacing: 0.4,
    color: AppColors.inkSecondary,
  );

  static const TextStyle cardMicro = TextStyle(
    fontFamily: fontPrimary,
    fontSize: 9,
    fontWeight: FontWeight.w400,
    height: 13.5 / 9,
    letterSpacing: 0.45,
    color: AppColors.onPrimarySoft,
  );

  static const TextStyle monoCardDigits = TextStyle(
    fontFamily: fontMono,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    height: 22.5 / 15,
    letterSpacing: 1.5,
    color: AppColors.onPrimary,
  );

  static const TextStyle monoCardBold = TextStyle(
    fontFamily: fontMono,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    height: 22.5 / 15,
    color: AppColors.onPrimary,
  );
}
