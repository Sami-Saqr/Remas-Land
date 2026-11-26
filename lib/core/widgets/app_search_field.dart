import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_assets.dart';

/// Reusable search input matching Search & Discover and Category Products Page.
class AppSearchField extends StatelessWidget {
  const AppSearchField({
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.onSubmitted,
    this.onClear,
    this.height = AppSpacing.searchBarHeight,
    this.autofocus = false,
    super.key,
  });

  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onClear;
  final double height;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: const BoxDecoration(
        color: AppColors.surfaceTint,
        borderRadius: AppRadii.radiusLg,
      ),
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Row(
        children: [
          SvgPicture.asset(
            AppAssets.iconSearchInput,
            width: 16,
            height: 16,
          ),
          const SizedBox(width: AppSpacing.sm),
          Expanded(
            child: TextField(
              controller: controller,
              autofocus: autofocus,
              onChanged: onChanged,
              onSubmitted: onSubmitted,
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.inkPrimary,
              ),
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: AppTypography.bodyMedium.copyWith(
                  color: AppColors.inkMuted,
                ),
              ),
            ),
          ),
          ValueListenableBuilder<TextEditingValue>(
            valueListenable: controller,
            builder: (context, value, _) {
              if (value.text.isEmpty) {
                return const SizedBox.shrink();
              }
              return GestureDetector(
                onTap: () {
                  controller.clear();
                  onClear?.call();
                  onChanged?.call('');
                },
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.xs),
                  child: SvgPicture.asset(
                    AppAssets.iconClearCircle,
                    width: 15,
                    height: 15,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
