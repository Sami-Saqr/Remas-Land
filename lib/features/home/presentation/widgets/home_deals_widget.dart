// "Shop Deals & More" vertical curated deal banner cards.

import 'package:flutter/material.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_strings.dart';
import 'package:remas_land/core/widgets/app_buttons.dart';
import 'package:remas_land/features/home/domain/banner_entity.dart';
import 'package:remas_land/features/home/presentation/widgets/home_section_header_widget.dart';

class HomeDealsSection extends StatelessWidget {
  const HomeDealsSection({
    required this.deals,
    required this.onDealTap,
    super.key,
  });

  final List<BannerEntity> deals;
  final void Function(BannerEntity) onDealTap;

  @override
  Widget build(BuildContext context) {
    if (deals.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeSectionHeader(
          overline: AppStrings.curatedOverline,
          title: AppStrings.shopDealsTitle,
        ),
        const SizedBox(height: AppSpacing.md),
        for (int i = 0; i < deals.length; i++) ...[
          if (i > 0) const SizedBox(height: AppSpacing.sm),
          Padding(
            padding: AppSpacing.screenHorizontal,
            child: _DealCard(
              deal: deals[i],
              onTap: () => onDealTap(deals[i]),
            ),
          ),
        ],
      ],
    );
  }
}

class _DealCard extends StatelessWidget {
  const _DealCard({required this.deal, required this.onTap});

  final BannerEntity deal;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final gradStart = Color(deal.gradientStartHex);
    final gradEnd = Color(deal.gradientEndHex);

    return ClipRRect(
      borderRadius: AppRadii.radiusXl,
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 168,
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Gradient background
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [gradStart, gradEnd],
                  ),
                ),
              ),
              // Product image (right)
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                width: 140,
                child: Image.asset(
                  deal.imageAsset,
                  fit: BoxFit.contain,
                  alignment: Alignment.centerRight,
                  errorBuilder: (_, _, _) => const SizedBox.shrink(),
                ),
              ),
              // Text (left)
              Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Badge
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.sm,
                        vertical: AppSpacing.xxs,
                      ),
                      decoration: const BoxDecoration(
                        color: AppColors.overlayWhite20,
                        borderRadius: AppRadii.radiusPill,
                      ),
                      child: Text(
                        deal.badgeText,
                        style: AppTypography.overline.copyWith(
                          color: AppColors.onPrimary,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    SizedBox(
                      width: 170,
                      child: Text(
                        deal.title,
                        style: AppTypography.cardTitle.copyWith(
                          color: AppColors.onPrimary,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (deal.subtitle != null) ...[
                      const SizedBox(height: AppSpacing.xxs),
                      SizedBox(
                        width: 160,
                        child: Text(
                          deal.subtitle!,
                          style: AppTypography.caption.copyWith(
                            color: AppColors.onPrimaryMuted,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                    const SizedBox(height: AppSpacing.sm),
                    AppPrimaryButton(
                      label: deal.ctaLabel,
                      onPressed: onTap,
                      height: 32,
                      expanded: false,
                      backgroundColor: AppColors.onPrimary,
                      foregroundColor: Color(deal.ctaTextColorHex),
                      borderRadius: AppRadii.radiusPill,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
