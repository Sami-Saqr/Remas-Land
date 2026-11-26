// "Explore Remas Land" 2-col category tile grid (isExploreFeatured=true).

import 'package:flutter/material.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_strings.dart';
import 'package:remas_land/core/widgets/app_card.dart';
import 'package:remas_land/features/catalog/domain/category_entity.dart';
import 'package:remas_land/features/home/presentation/widgets/home_section_header_widget.dart';

class HomeExploreGrid extends StatelessWidget {
  const HomeExploreGrid({
    required this.categories,
    required this.onCategoryTap,
    super.key,
  });

  final List<CategoryEntity> categories;
  final void Function(CategoryEntity) onCategoryTap;

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeSectionHeader(
          overline: AppStrings.aislesOverline,
          title: AppStrings.exploreBrandHeading,
          onViewAll: () => onCategoryTap(
            const CategoryEntity(
              id: 'all',
              name: 'All',
              subtitle: '',
              imageAsset: '',
              bannerTitle: '',
              bannerSubtitle: '',
              bannerBadge: '',
              bannerDiscountText: '',
              sortOrder: 0,
              isExploreFeatured: false,
              isTrending: false,
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Padding(
          padding: AppSpacing.screenHorizontal,
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: AppSpacing.sm,
              mainAxisSpacing: AppSpacing.sm,
              childAspectRatio: 1.45,
            ),
            itemBuilder: (context, index) => _CategoryTile(
              category: categories[index],
              onTap: () => onCategoryTap(categories[index]),
            ),
          ),
        ),
      ],
    );
  }
}

class _CategoryTile extends StatelessWidget {
  const _CategoryTile({required this.category, required this.onTap});

  final CategoryEntity category;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.zero,
      shadows: AppShadows.shadowGridCard,
      onTap: onTap,
      child: ClipRRect(
        borderRadius: AppRadii.radiusLg,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Category image
            Image.asset(
              category.imageAsset,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => const ColoredBox(
                color: AppColors.surfaceTint,
              ),
            ),
            // Dark gradient overlay at bottom
            const Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: 56,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Color(0xCC111C2D)],
                  ),
                ),
              ),
            ),
            // Category name
            Positioned(
              left: AppSpacing.sm,
              right: AppSpacing.sm,
              bottom: AppSpacing.sm,
              child: Text(
                category.name,
                style: AppTypography.gridCardTitle.copyWith(
                  color: AppColors.onPrimary,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
