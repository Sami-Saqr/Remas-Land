import 'package:flutter/material.dart';

/// Spacing and component dimension tokens extracted from Figma.
abstract final class AppSpacing {
  // Base spacing scale
  static const double xxs = 2;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double xxxl = 32;

  // Screen layout padding
  static const EdgeInsets screenHorizontal =
      EdgeInsets.symmetric(horizontal: lg);
  static const EdgeInsets cardPaddingSm = EdgeInsets.all(sm);
  static const EdgeInsets cardPaddingMd = EdgeInsets.all(md);
  static const EdgeInsets cardPaddingLg = EdgeInsets.all(lg);

  // Component heights & sizes
  static const double bottomNavHeight = 64;
  static const double homeHeaderHeight = 80;
  static const double searchBarHeight = 48;
  static const double categorySearchHeight = 38;
  static const double buttonHeightMd = 48;
  static const double buttonHeightLg = 50;
  static const double checkoutButtonHeight = 52;
  static const double iconCircleSm = 32;
  static const double iconCircleMd = 36;
  static const double iconCircleLg = 40;
  static const double stepperButtonSm = 24;
  static const double stepperButtonMd = 28;
  static const double productThumbSm = 44;
  static const double productThumbMd = 48;
  static const double productThumbLg = 80;
  static const double spotlightCardWidth = 172;
  static const double spotlightImageHeight = 128;
  static const double categoryGridImageHeight = 151;
}
