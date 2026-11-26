// "Shop by Brands" horizontal brand circle rail.

import 'package:flutter/material.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_strings.dart';
import 'package:remas_land/features/catalog/domain/brand_entity.dart';
import 'package:remas_land/features/home/presentation/widgets/home_section_header_widget.dart';

class HomeBrandsRail extends StatelessWidget {
  const HomeBrandsRail({
    required this.brands,
    required this.onBrandTap,
    super.key,
  });

  final List<BrandEntity> brands;
  final void Function(BrandEntity) onBrandTap;

  static const double _circleDiameter = 64;

  @override
  Widget build(BuildContext context) {
    if (brands.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeSectionHeader(
          overline: AppStrings.topPartnersOverline,
          title: AppStrings.shopByBrandsTitle,
        ),
        const SizedBox(height: AppSpacing.sm),
        SizedBox(
          height: _circleDiameter + 28,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: AppSpacing.screenHorizontal,
            itemCount: brands.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: index < brands.length - 1 ? AppSpacing.lg : 0,
                ),
                child: _BrandCircle(
                  brand: brands[index],
                  onTap: () => onBrandTap(brands[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _BrandCircle extends StatelessWidget {
  const _BrandCircle({required this.brand, required this.onTap});

  final BrandEntity brand;
  final VoidCallback onTap;

  static const double _circleDiameter = 64;

  @override
  Widget build(BuildContext context) {
    final bg = Color(brand.bgColorHex);
    final fg = Color(brand.textColorHex);

    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: _circleDiameter,
            height: _circleDiameter,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: AppColors.surface,
              shape: BoxShape.circle,
              boxShadow: AppShadows.shadowSm,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: bg,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 4),
              alignment: Alignment.center,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  brand.name,
                  style: AppTypography.appBarTitle.copyWith(
                    fontSize: 12,
                    color: fg,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          SizedBox(
            width: _circleDiameter + 8,
            child: Text(
              brand.name,
              style: AppTypography.overline.copyWith(
                color: AppColors.inkPrimary,
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.22,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
