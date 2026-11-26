// "الاقسام" 3-col Arabic calligraphy category grid + Limited Offers + "عرض المزيد" — Main.png.

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_assets.dart';
import 'package:remas_land/core/constants/app_strings.dart';
import 'package:remas_land/features/catalog/domain/category_entity.dart';

class HomeCategoryIndex extends StatelessWidget {
  const HomeCategoryIndex({
    required this.categories,
    required this.onCategoryTap,
    this.onViewAll,
    this.onOffersTap,
    super.key,
  });

  final List<CategoryEntity> categories;
  final void Function(CategoryEntity) onCategoryTap;
  final VoidCallback? onViewAll;
  final VoidCallback? onOffersTap;

  // Order matches screenshots/Home Page photos/Main.png:
  // Row 1: فريش طبيعي | حليب و رايب | Remas Limited Offers
  // Row 2: معلب نباتي | زبادي | معلب طبيعي
  // Row 3: عرض المزيد | حلويات | سلطات
  static const List<String?> _gridAssets = [
    AppAssets.catAr4,
    AppAssets.catAr1,
    AppAssets.remasLimitedOffers,
    AppAssets.catAr5,
    AppAssets.catAr3,
    AppAssets.catAr2,
    null, // "عرض المزيد" tile
    AppAssets.catAr6,
    AppAssets.catAr7,
  ];

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: AppSpacing.screenHorizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: onViewAll ?? () => onCategoryTap(categories.first),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      size: 14,
                      color: AppColors.primaryBright,
                    ),
                    const SizedBox(width: AppSpacing.xs),
                    Text(
                      AppStrings.viewMoreAr,
                      style: AppTypography.bodySemiBold.copyWith(
                        color: AppColors.primaryBright,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                AppStrings.categoriesTitleAr,
                style: AppTypography.sectionTitle.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Padding(
          padding: AppSpacing.screenHorizontal,
          child: GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: AppSpacing.sm,
              mainAxisSpacing: AppSpacing.sm,
            ),
            itemBuilder: (context, index) {
              if (index == 6) {
                return _ExploreAllTile(
                  onTap: onViewAll ?? () => onCategoryTap(categories.first),
                );
              }
              final asset = _gridAssets[index]!;
              final isLimitedOffers = index == 2;
              final cat = categories[index % categories.length];
              return _CategoryCalligraphyTile(
                imageAsset: asset,
                isPlainImage: isLimitedOffers,
                onTap: isLimitedOffers
                    ? (onOffersTap ?? () => onCategoryTap(cat))
                    : () => onCategoryTap(cat),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CategoryCalligraphyTile extends StatelessWidget {
  const _CategoryCalligraphyTile({
    required this.imageAsset,
    required this.onTap,
    this.isPlainImage = false,
  });

  final String imageAsset;
  final VoidCallback onTap;
  final bool isPlainImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.sm),
        decoration: const BoxDecoration(
          color: AppColors.surface,
          borderRadius: AppRadii.radiusLg,
          boxShadow: AppShadows.shadowXs,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: isPlainImage ? AppColors.surface : AppColors.surfaceTint,
            borderRadius: AppRadii.radiusMd,
          ),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(
            imageAsset,
            fit: BoxFit.contain,
            errorBuilder: (_, _, _) => const Icon(
              Icons.category_outlined,
              color: AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}

class _ExploreAllTile extends StatelessWidget {
  const _ExploreAllTile({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.sm),
        decoration: const BoxDecoration(
          color: AppColors.surfaceTintStrong,
          borderRadius: AppRadii.radiusLg,
          boxShadow: AppShadows.shadowXs,
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: AppRadii.radiusMd,
                ),
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  AppAssets.exploreGridDots,
                  width: 19,
                  height: 19,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              AppStrings.viewMoreAr,
              style: AppTypography.overline.copyWith(
                color: AppColors.primaryBright,
                fontWeight: FontWeight.w700,
                letterSpacing: 0,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
