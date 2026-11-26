import 'package:flutter/material.dart';

import 'package:remas_land/app/theme/app_colors.dart';
import 'package:remas_land/app/theme/app_radii.dart';
import 'package:remas_land/app/theme/app_typography.dart';

export 'app_colors.dart';
export 'app_radii.dart';
export 'app_shadows.dart';
export 'app_spacing.dart';
export 'app_typography.dart';

/// Application Material 3 light theme built from Figma design tokens.
abstract final class AppTheme {
  static ThemeData get light {
    const colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      primaryContainer: AppColors.surfaceTintStrong,
      onPrimaryContainer: AppColors.primaryDeep,
      secondary: AppColors.primaryBright,
      onSecondary: AppColors.onPrimary,
      secondaryContainer: AppColors.badgeTint,
      onSecondaryContainer: AppColors.primaryDark,
      tertiary: AppColors.accentAmber,
      onTertiary: AppColors.onPrimary,
      tertiaryContainer: AppColors.accentPeach,
      onTertiaryContainer: AppColors.accentAmberDark,
      error: AppColors.error,
      onError: AppColors.onPrimary,
      errorContainer: AppColors.errorTint,
      onErrorContainer: AppColors.error,
      surface: AppColors.surface,
      onSurface: AppColors.inkPrimary,
      surfaceContainerHighest: AppColors.surfaceTint,
      onSurfaceVariant: AppColors.inkSecondary,
      outline: AppColors.borderLight,
      outlineVariant: AppColors.surfaceTintStrong,
      shadow: Color(0x1A000000),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: colorScheme,
      fontFamily: AppTypography.fontPrimary,
      scaffoldBackgroundColor: AppColors.scaffoldBg,
      dividerColor: AppColors.borderLight,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.scaffoldBg,
        foregroundColor: AppColors.inkPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        titleTextStyle: AppTypography.appBarTitle,
      ),
      cardTheme: const CardThemeData(
        color: AppColors.surface,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: AppRadii.radiusLg),
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.inkPrimary,
        contentTextStyle: TextStyle(
          fontFamily: AppTypography.fontPrimary,
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: AppColors.onPrimary,
        ),
      ),
    );
  }
}
