import 'package:flutter/material.dart';

import 'package:remas_land/app/theme/app_theme.dart';

/// Badge variants used across Home, Category, Wallet, and Account screens.
enum AppBadgeTone { primary, amber, softBlue }

/// Compact label badge (`-15%`, `Fresh Raw`, `Bestseller`, `2 active`).
class AppBadge extends StatelessWidget {
  const AppBadge({
    required this.label,
    this.tone = AppBadgeTone.primary,
    this.pill = false,
    super.key,
  });

  final String label;
  final AppBadgeTone tone;
  final bool pill;

  @override
  Widget build(BuildContext context) {
    final (bg, fg) = switch (tone) {
      AppBadgeTone.primary => (AppColors.primary, AppColors.onPrimary),
      AppBadgeTone.amber => (AppColors.accentAmber, AppColors.accentAmberInk),
      AppBadgeTone.softBlue => (AppColors.dotInactive, AppColors.primaryDark),
    };

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.xxs,
      ),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: pill ? AppRadii.radiusPill : AppRadii.radiusSm,
        boxShadow: AppShadows.shadowXs,
      ),
      child: Text(
        label,
        style: AppTypography.overline.copyWith(
          color: fg,
          fontWeight: FontWeight.w800,
          letterSpacing: 0,
        ),
      ),
    );
  }
}

/// Selectable filter/suggestion chip matching Search & Category screens.
class AppPillChip extends StatelessWidget {
  const AppPillChip({
    required this.label,
    required this.selected,
    required this.onTap,
    this.leading,
    super.key,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: AppRadii.radiusPill,
        boxShadow: selected ? AppShadows.shadowXs : null,
      ),
      child: Material(
        color: selected ? AppColors.primary : AppColors.surface,
        shape: StadiumBorder(
          side: selected
              ? BorderSide.none
              : const BorderSide(color: AppColors.borderLight),
        ),
        child: InkWell(
          onTap: onTap,
          customBorder: const StadiumBorder(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 6,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (leading != null) ...[
                  leading!,
                  const SizedBox(width: AppSpacing.xs),
                ],
                Text(
                  label,
                  style: AppTypography.chipLabel.copyWith(
                    color: selected
                        ? AppColors.onPrimary
                        : AppColors.inkSecondary,
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
