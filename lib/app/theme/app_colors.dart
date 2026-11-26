import 'package:flutter/material.dart';

/// Color tokens extracted from the Remas Land Figma design system.
///
/// Light mode only. Category Products Page is unified onto this palette.
abstract final class AppColors {
  // Primary brand blues
  static const Color primary = Color(0xFF1D4ED8);
  static const Color primaryBright = Color(0xFF2563EB);
  static const Color primaryDark = Color(0xFF1E40AF);
  static const Color primaryDeep = Color(0xFF1E3A8A);
  static const Color navNavy = Color(0xFF173146);
  static const Color navTeal = Color(0xFF00C3D0);

  // Backgrounds & surfaces
  static const Color scaffoldBg = Color(0xFFF9F9FF);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceNav = Color(0xF2FFFFFF); // 95% white
  static const Color surfaceHeader = Color(0xE6F9F9FF); // 90% scaffoldBg
  static const Color surfaceTint = Color(0xFFF0F3FF);
  static const Color surfaceTintStrong = Color(0xFFE7EEFF);
  static const Color badgeTint = Color(0xFFDEE8FF);
  static const Color pillTint = Color(0xFFDCE1FF);
  static const Color dotInactive = Color(0xFFD8E3FB);
  static const Color surfaceSoft = Color(0xFFEFF6FF);

  // Text & ink
  static const Color inkPrimary = Color(0xFF111C2D);
  static const Color inkSecondary = Color(0xFF434655);
  static const Color inkMuted = Color(0xFF747686);
  static const Color inkFaint = Color(0xFFC4C5D7);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onPrimaryMuted = Color(0xFFDBEAFE);
  static const Color onPrimarySoft = Color(0xFFCAD3FF);

  // Semantic & accents
  static const Color accentAmber = Color(0xFFFE932C);
  static const Color accentAmberDark = Color(0xFF904D00);
  static const Color accentAmberInk = Color(0xFF663500);
  static const Color accentGold = Color(0xFFFCD34D);
  static const Color accentPeach = Color(0xFFFFDCC3);
  static const Color accentFoilTop = Color(0xFFFFD97A);
  static const Color accentFoilMid = Color(0xFFF7C244);
  static const Color accentFoilBottom = Color(0xFFC99518);

  static const Color error = Color(0xFFBA1A1A);
  static const Color errorTint = Color(0x66FFDAD6); // 40% #FFDAD6
  static const Color borderLight = Color(0xFFE2E8F0);
  static const Color overlayWhite20 = Color(0x33FFFFFF);
  static const Color overlayWhite15 = Color(0x26FFFFFF);
  static const Color overlayWhite10 = Color(0x1AFFFFFF);
  static const Color primaryOverlay10 = Color(0x1A1D4ED8);
  static const Color primaryBrightOverlay10 = Color(0x1A2563EB);
  static const Color badgeTint50 = Color(0x80DEE8FF);
  static const Color surfaceTintStrong50 = Color(0x80E7EEFF);

  // Partner brand circle colors
  static const Color brandJuhayna = Color(0xFFE11D48);
  static const Color brandDomty = Color(0xFF1D4ED8);
  static const Color brandLactel = Color(0xFF059669);
  static const Color brandAlmarai = Color(0xFF064E3B);
  static const Color brandAlmaraiText = Color(0xFFFEF08A);
  static const Color brandPresident = Color(0xFFB45309);
  static const Color brandNestle = Color(0xFF0284C7);
}
