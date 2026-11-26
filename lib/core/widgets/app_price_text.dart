import 'package:flutter/material.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_strings.dart';
import 'package:remas_land/core/utils/formatters.dart';

/// Displays an EGP price (from integer piasters) with optional strikethrough.
class AppPriceText extends StatelessWidget {
  const AppPriceText({
    required this.pricePiasters,
    this.originalPricePiasters,
    this.priceColor = AppColors.primary,
    this.fontSize = 16,
    super.key,
  });

  final int pricePiasters;
  final int? originalPricePiasters;
  final Color priceColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                AppFormatters.formatPiasters(pricePiasters),
                style: AppTypography.priceBold.copyWith(
                  fontSize: fontSize,
                  color: priceColor,
                ),
              ),
              const SizedBox(width: AppSpacing.xs),
              Text(
                AppStrings.currencyCode,
                style: AppTypography.overline.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.inkMuted,
                ),
              ),
            ],
          ),
        ),
        if (originalPricePiasters != null &&
            originalPricePiasters! > pricePiasters)
          Text(
            AppFormatters.formatPricePiasters(originalPricePiasters!),
            style: AppTypography.overline.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.inkMuted,
              decoration: TextDecoration.lineThrough,
            ),
          ),
      ],
    );
  }
}
