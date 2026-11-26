import 'package:flutter/material.dart';

import 'package:remas_land/app/theme/app_theme.dart';

/// Primary solid CTA button matching Figma tokens.
class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton({
    required this.label,
    required this.onPressed,
    this.leading,
    this.trailing,
    this.height = AppSpacing.buttonHeightMd,
    this.backgroundColor = AppColors.primary,
    this.foregroundColor = AppColors.onPrimary,
    this.borderRadius = AppRadii.radiusLg,
    this.isLoading = false,
    this.expanded = true,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final Widget? leading;
  final Widget? trailing;
  final double height;
  final Color backgroundColor;
  final Color foregroundColor;
  final BorderRadius borderRadius;
  final bool isLoading;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    final child = Material(
      color: onPressed == null
          ? backgroundColor.withValues(alpha: 0.5)
          : backgroundColor,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: isLoading ? null : onPressed,
        borderRadius: borderRadius,
        child: Container(
          height: height,
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
          alignment: Alignment.center,
          child: isLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: AppColors.onPrimary,
                  ),
                )
              : Row(
                  mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (leading != null) ...[
                      leading!,
                      const SizedBox(width: AppSpacing.sm),
                    ],
                    Flexible(
                      child: Text(
                        label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTypography.cardTitle.copyWith(
                          color: foregroundColor,
                        ),
                      ),
                    ),
                    if (trailing != null) ...[
                      const SizedBox(width: AppSpacing.sm),
                      trailing!,
                    ],
                  ],
                ),
        ),
      ),
    );

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        boxShadow: AppShadows.shadowPrimaryButton,
      ),
      child: expanded ? SizedBox(width: double.infinity, child: child) : child,
    );
  }
}

/// Secondary light surface button matching Figma tokens.
class AppSecondaryButton extends StatelessWidget {
  const AppSecondaryButton({
    required this.label,
    required this.onPressed,
    this.leading,
    this.height = AppSpacing.buttonHeightMd,
    this.backgroundColor = AppColors.surface,
    this.foregroundColor = AppColors.inkPrimary,
    this.borderRadius = AppRadii.radiusMd,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final Widget? leading;
  final double height;
  final Color backgroundColor;
  final Color foregroundColor;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        boxShadow: AppShadows.shadowXs,
      ),
      child: Material(
        color: backgroundColor,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: onPressed,
          borderRadius: borderRadius,
          child: Container(
            height: height,
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (leading != null) ...[
                  leading!,
                  const SizedBox(width: AppSpacing.sm),
                ],
                Flexible(
                  child: Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.cardTitle.copyWith(
                      color: foregroundColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Circular icon action button used for quick-add `+`, back, and edit actions.
class AppIconCircleButton extends StatelessWidget {
  const AppIconCircleButton({
    required this.icon,
    required this.onPressed,
    this.size = AppSpacing.iconCircleSm,
    this.backgroundColor = AppColors.primary,
    this.shadows = AppShadows.shadowXs,
    super.key,
  });

  final Widget icon;
  final VoidCallback? onPressed;
  final double size;
  final Color backgroundColor;
  final List<BoxShadow> shadows;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: shadows,
      ),
      child: Material(
        color: backgroundColor,
        shape: const CircleBorder(),
        child: InkWell(
          onTap: onPressed,
          customBorder: const CircleBorder(),
          child: SizedBox(
            width: size,
            height: size,
            child: Center(child: icon),
          ),
        ),
      ),
    );
  }
}
