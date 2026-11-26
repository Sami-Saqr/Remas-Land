// Shared section-header widget: overline + title + optional "View All" link.

import 'package:flutter/material.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_strings.dart';

/// Reusable header row used by all Home screen sections.
class HomeSectionHeader extends StatelessWidget {
  const HomeSectionHeader({
    required this.title,
    this.overline,
    this.onViewAll,
    super.key,
  });

  final String title;
  final String? overline;
  final VoidCallback? onViewAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.screenHorizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (overline != null)
            Text(overline!, style: AppTypography.overline),
          if (overline != null) const SizedBox(height: AppSpacing.xxs),
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: AppTypography.sectionTitle,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (onViewAll != null)
                GestureDetector(
                  onTap: onViewAll,
                  child: Text(
                    AppStrings.viewAll,
                    style: AppTypography.bodySemiBold.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
