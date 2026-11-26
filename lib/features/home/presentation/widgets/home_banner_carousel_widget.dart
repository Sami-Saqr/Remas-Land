// Hero banner carousel with auto-slide (3 s), gradient bg, dots.

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_assets.dart';
import 'package:remas_land/core/widgets/app_buttons.dart';
import 'package:remas_land/features/home/domain/banner_entity.dart';

class HomeBannerCarousel extends StatefulWidget {
  const HomeBannerCarousel({
    required this.banners,
    required this.onCtaTap,
    super.key,
  });

  final List<BannerEntity> banners;
  final void Function(String categoryId) onCtaTap;

  @override
  State<HomeBannerCarousel> createState() => _HomeBannerCarouselState();
}

class _HomeBannerCarouselState extends State<HomeBannerCarousel> {
  late final PageController _controller;
  late final Timer _timer;
  int _page = 0;

  static const double _bannerHeight = 184;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _timer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (!mounted || widget.banners.isEmpty) return;
      final next = (_page + 1) % widget.banners.length;
      _controller.animateToPage(
        next,
        duration: const Duration(milliseconds: 420),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.banners.isEmpty) return const SizedBox.shrink();

    return Column(
      children: [
        SizedBox(
          height: _bannerHeight,
          child: PageView.builder(
            controller: _controller,
            itemCount: widget.banners.length,
            onPageChanged: (i) => setState(() => _page = i),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.lg,
                ),
                child: _BannerCard(
                  banner: widget.banners[index],
                  isPrimaryBanner: index == 0,
                  onCtaTap: () =>
                      widget.onCtaTap(widget.banners[index].targetCategoryId),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        // Dot indicators
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.banners.length,
            (i) => AnimatedContainer(
              duration: const Duration(milliseconds: 280),
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: i == _page ? 24 : 6,
              height: 6,
              decoration: BoxDecoration(
                color: i == _page
                    ? AppColors.primaryBright
                    : AppColors.dotInactive,
                borderRadius: AppRadii.radiusPill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _BannerCard extends StatelessWidget {
  const _BannerCard({
    required this.banner,
    required this.onCtaTap,
    this.isPrimaryBanner = false,
  });

  final BannerEntity banner;
  final VoidCallback onCtaTap;
  final bool isPrimaryBanner;

  @override
  Widget build(BuildContext context) {
    final gradStart = isPrimaryBanner
        ? const Color(0xFF262432)
        : Color(banner.gradientStartHex);
    final gradEnd = isPrimaryBanner
        ? const Color(0xFFDC2626)
        : Color(banner.gradientEndHex);
    final imageAsset = isPrimaryBanner ? AppAssets.zMixBottle : banner.imageAsset;
    final title = isPrimaryBanner ? 'The All New Z-mix' : banner.title;
    final subtitle = isPrimaryBanner ? 'With 3 different Flavors' : banner.subtitle;
    final ctaColor = isPrimaryBanner
        ? const Color(0xFFDC2626)
        : Color(banner.ctaTextColorHex);
    return ClipRRect(
      borderRadius: AppRadii.radiusLg,
      child: Stack(
        children: [
          // Gradient background
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [gradStart, gradEnd],
                ),
              ),
            ),
          ),
          // Product image card (right side, 96x96 rounded)
          Positioned(
            right: AppSpacing.md,
            top: 0,
            bottom: 0,
            child: Center(
              child: Container(
                width: 96,
                height: 96,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  borderRadius: AppRadii.radiusMd,
                  boxShadow: AppShadows.shadowXs,
                ),
                child: Image.asset(
                  imageAsset,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) => const SizedBox.shrink(),
                ),
              ),
            ),
          ),
          // Text content (left side)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.md,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Badge pill
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
                    banner.badgeText,
                    style: AppTypography.overline.copyWith(
                      color: AppColors.onPrimary,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                SizedBox(
                  width: 170,
                  child: Text(
                    title,
                    style: AppTypography.bannerTitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: AppSpacing.xs),
                  SizedBox(
                    width: 160,
                    child: Text(
                      subtitle,
                      style: AppTypography.caption.copyWith(
                        color: AppColors.onPrimaryMuted,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
                const SizedBox(height: AppSpacing.md),
                // CTA button
                AppPrimaryButton(
                  label: banner.ctaLabel,
                  onPressed: onCtaTap,
                  height: 36,
                  expanded: false,
                  backgroundColor: AppColors.onPrimary,
                  foregroundColor: ctaColor,
                  borderRadius: AppRadii.radiusPill,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
