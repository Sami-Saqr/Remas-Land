import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_assets.dart';

/// Compact pill quantity stepper used on Cart items and Category product cards.
class AppQuantityStepper extends StatelessWidget {
  const AppQuantityStepper({
    required this.quantity,
    required this.onDecrement,
    required this.onIncrement,
    this.compact = false,
    super.key,
  });

  final int quantity;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;

  /// When true, renders the `24px` variant used in 2-col Category grid cards.
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final buttonSize =
        compact ? AppSpacing.stepperButtonSm : AppSpacing.stepperButtonMd;
    final plusColor = compact ? AppColors.primary : AppColors.primaryBright;
    final qtyStyle = compact
        ? AppTypography.chipLabel.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColors.inkPrimary,
          )
        : AppTypography.cardTitle;

    return Container(
      padding: EdgeInsets.all(compact ? 3 : 2),
      decoration: BoxDecoration(
        color: AppColors.surfaceTintStrong,
        borderRadius: AppRadii.radiusPill,
        border: compact
            ? Border.all(color: AppColors.borderLight)
            : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _StepperCircle(
            size: buttonSize,
            backgroundColor: AppColors.surface,
            onTap: onDecrement,
            child: SvgPicture.asset(
              AppAssets.iconMinusSmall,
              width: compact ? 7 : 9,
              height: 1.5,
            ),
          ),
          SizedBox(
            width: buttonSize,
            child: Text(
              '$quantity',
              textAlign: TextAlign.center,
              style: qtyStyle,
            ),
          ),
          _StepperCircle(
            size: buttonSize,
            backgroundColor: plusColor,
            onTap: onIncrement,
            child: SvgPicture.asset(
              AppAssets.iconPlusSmallWhite,
              width: compact ? 7 : 9,
              height: compact ? 7 : 9,
            ),
          ),
        ],
      ),
    );
  }
}

class _StepperCircle extends StatelessWidget {
  const _StepperCircle({
    required this.size,
    required this.backgroundColor,
    required this.onTap,
    required this.child,
  });

  final double size;
  final Color backgroundColor;
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: AppShadows.shadowXs,
      ),
      child: Material(
        color: backgroundColor,
        shape: const CircleBorder(),
        child: InkWell(
          onTap: onTap,
          customBorder: const CircleBorder(),
          child: SizedBox(
            width: size,
            height: size,
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
