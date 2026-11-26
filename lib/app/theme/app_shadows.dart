import 'package:flutter/material.dart';

/// Elevation and box shadow tokens extracted from Figma.
abstract final class AppShadows {
  static const List<BoxShadow> shadowXs = [
    BoxShadow(
      color: Color(0x0D000000),
      blurRadius: 1,
      offset: Offset(0, 1),
    ),
  ];

  static const List<BoxShadow> shadowSm = [
    BoxShadow(
      color: Color(0x0D000000),
      blurRadius: 2,
      offset: Offset(0, 1),
    ),
  ];

  static const List<BoxShadow> shadowGridCard = [
    BoxShadow(
      color: Color(0x08000000),
      blurRadius: 6,
      offset: Offset(0, 2),
    ),
  ];

  static const List<BoxShadow> shadowCard = [
    BoxShadow(
      color: Color(0x0A1E293B),
      blurRadius: 20,
      spreadRadius: -2,
      offset: Offset(0, 4),
    ),
  ];

  static const List<BoxShadow> shadowHeader = [
    BoxShadow(
      color: Color(0x0A000000),
      blurRadius: 8,
      offset: Offset(0, 1),
    ),
  ];

  static const List<BoxShadow> shadowNav = [
    BoxShadow(
      color: Color(0x0F1E293B),
      blurRadius: 20,
      offset: Offset(0, -4),
    ),
  ];

  static const List<BoxShadow> shadowDock = [
    BoxShadow(
      color: Color(0x1F1E293B),
      blurRadius: 30,
      offset: Offset(0, -8),
    ),
  ];

  static const List<BoxShadow> shadowPrimaryButton = [
    BoxShadow(
      color: Color(0x1A000000),
      blurRadius: 6,
      spreadRadius: -1,
      offset: Offset(0, 4),
    ),
    BoxShadow(
      color: Color(0x1A000000),
      blurRadius: 4,
      spreadRadius: -2,
      offset: Offset(0, 2),
    ),
  ];

  static const List<BoxShadow> shadowBankingCard = [
    BoxShadow(
      color: Color(0x1A000000),
      blurRadius: 25,
      spreadRadius: -5,
      offset: Offset(0, 20),
    ),
    BoxShadow(
      color: Color(0x1A000000),
      blurRadius: 10,
      spreadRadius: -6,
      offset: Offset(0, 8),
    ),
  ];
}
