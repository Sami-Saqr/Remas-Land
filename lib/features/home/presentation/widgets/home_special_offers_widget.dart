// "Special Offers" 2-up card row with live countdown chip.

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_strings.dart';
import 'package:remas_land/core/widgets/add_to_cart_button.dart';
import 'package:remas_land/core/widgets/app_badges.dart';
import 'package:remas_land/core/widgets/app_price_text.dart';
import 'package:remas_land/features/catalog/domain/product_entity.dart';

class HomeSpecialOffers extends StatefulWidget {
  const HomeSpecialOffers({
    required this.products,
    required this.onProductTap,
    required this.onAddToCart,
    required this.onViewAll,
    super.key,
  });

  final List<ProductEntity> products;
  final void Function(ProductEntity) onProductTap;
  final void Function(ProductEntity) onAddToCart;
  final VoidCallback onViewAll;

  @override
  State<HomeSpecialOffers> createState() => _HomeSpecialOffersState();
}

class _HomeSpecialOffersState extends State<HomeSpecialOffers> {
  static const int _startSeconds = 8 * 60 + 34; // 08:34
  late int _remaining;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _remaining = _startSeconds;
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!mounted) return;
      setState(() {
        if (_remaining > 0) _remaining--;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String get _countdownLabel {
    final m = (_remaining ~/ 60).toString().padLeft(2, '0');
    final s = (_remaining % 60).toString().padLeft(2, '0');
    return 'Ends in $m:${s}m';
  }

  @override
  Widget build(BuildContext context) {
    if (widget.products.isEmpty) return const SizedBox.shrink();

    final shown = widget.products.take(2).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header row with countdown chip
        Padding(
          padding: AppSpacing.screenHorizontal,
          child: Row(
            children: [
              const Flexible(
                child: Text(
                  AppStrings.specialOffersTitle,
                  style: AppTypography.sectionTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: AppSpacing.sm),
              // Countdown chip
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                  vertical: 2,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.surfaceTintStrong50,
                  borderRadius: AppRadii.radiusPill,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.schedule,
                      size: 12,
                      color: AppColors.primaryBright,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      _countdownLabel,
                      style: AppTypography.overline.copyWith(
                        color: AppColors.primaryBright,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: widget.onViewAll,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AppStrings.viewAll,
                      style: AppTypography.bodySemiBold.copyWith(
                        color: AppColors.primaryBright,
                      ),
                    ),
                    const SizedBox(width: 2),
                    const Icon(
                      Icons.arrow_forward,
                      size: 13,
                      color: AppColors.primaryBright,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        // 2-up product cards
        Padding(
          padding: AppSpacing.screenHorizontal,
          child: Row(
            children: [
              for (int i = 0; i < shown.length; i++) ...[
                if (i > 0) const SizedBox(width: AppSpacing.sm),
                Expanded(
                  child: _SpecialOfferCard(
                    product: shown[i],
                    onTap: () => widget.onProductTap(shown[i]),
                    onAdd: () => widget.onAddToCart(shown[i]),
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _SpecialOfferCard extends StatelessWidget {
  const _SpecialOfferCard({
    required this.product,
    required this.onTap,
    required this.onAdd,
  });

  final ProductEntity product;
  final VoidCallback onTap;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.surface,
          borderRadius: AppRadii.radiusLg,
          boxShadow: AppShadows.shadowCard,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image with optional discount badge
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(AppRadii.lg),
                  ),
                  child: SizedBox(
                    height: 110,
                    width: double.infinity,
                    child: Image.asset(
                      product.imageAsset,
                      fit: BoxFit.cover,
                      errorBuilder: (_, _, _) => const ColoredBox(
                        color: AppColors.surfaceTint,
                        child: SizedBox(height: 110),
                      ),
                    ),
                  ),
                ),
                if (product.badgeText != null)
                  Positioned(
                    top: AppSpacing.sm,
                    left: AppSpacing.sm,
                    child: AppBadge(
                      label: product.badgeText!,
                      tone: AppBadgeTone.amber,
                      pill: true,
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.sm,
                AppSpacing.xs,
                AppSpacing.sm,
                AppSpacing.sm,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: AppTypography.bodyCompact,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: AppPriceText(
                          pricePiasters: product.pricePiasters,
                          originalPricePiasters: product.originalPricePiasters,
                          fontSize: 13,
                        ),
                      ),
                      AddToCartButton(onTap: onAdd),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
