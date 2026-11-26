// "The Spotlight" horizontal product carousel.

import 'package:flutter/material.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_strings.dart';
import 'package:remas_land/core/widgets/add_to_cart_button.dart';
import 'package:remas_land/core/widgets/app_price_text.dart';
import 'package:remas_land/features/catalog/domain/product_entity.dart';
import 'package:remas_land/features/home/presentation/widgets/home_section_header_widget.dart';

class HomeSpotlightRail extends StatelessWidget {
  const HomeSpotlightRail({
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
  Widget build(BuildContext context) {
    if (products.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeSectionHeader(
          title: AppStrings.spotlightTitle,
          onViewAll: onViewAll,
        ),
        const SizedBox(height: AppSpacing.md),
        SizedBox(
          height: 248,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: AppSpacing.screenHorizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: index < products.length - 1 ? AppSpacing.sm : 0,
                ),
                child: _SpotlightCard(
                  product: products[index],
                  onTap: () => onProductTap(products[index]),
                  onAdd: () => onAddToCart(products[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _SpotlightCard extends StatelessWidget {
  const _SpotlightCard({
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
        width: AppSpacing.spotlightCardWidth,
        decoration: const BoxDecoration(
          color: AppColors.surface,
          borderRadius: AppRadii.radiusLg,
          boxShadow: AppShadows.shadowCard,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product image
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(AppRadii.lg),
              ),
              child: SizedBox(
                height: AppSpacing.spotlightImageHeight,
                width: double.infinity,
                child: Image.asset(
                  product.imageAsset,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) => Container(
                    color: AppColors.surfaceTint,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.farmLabel,
                      style: AppTypography.overline,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: AppSpacing.xxs),
                    Text(
                      product.name,
                      style: AppTypography.bodyCompact,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: AppPriceText(
                            pricePiasters: product.pricePiasters,
                            originalPricePiasters:
                                product.originalPricePiasters,
                            fontSize: 14,
                          ),
                        ),
                        AddToCartButton(onTap: onAdd),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
