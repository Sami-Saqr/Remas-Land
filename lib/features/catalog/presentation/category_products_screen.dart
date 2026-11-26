import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_constants.dart';
import 'package:remas_land/core/constants/app_strings.dart';
import 'package:remas_land/core/widgets/widgets.dart';
import 'package:remas_land/features/cart/presentation/cart_provider.dart';
import 'package:remas_land/features/catalog/domain/product_entity.dart';
import 'package:remas_land/features/catalog/presentation/catalog_provider.dart';

/// Category & Brand Products storefront screen (route `/category/:slug`).
class CategoryProductsScreen extends ConsumerStatefulWidget {
  const CategoryProductsScreen({required this.slug, super.key});

  final String slug;

  @override
  ConsumerState<CategoryProductsScreen> createState() =>
      _CategoryProductsScreenState();
}

class _CategoryProductsScreenState
    extends ConsumerState<CategoryProductsScreen> {
  final _searchController = TextEditingController();
  String _filter = 'All';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  String _formatTitle(String slug) {
    if (slug == 'all') return 'All Products';
    if (slug == 'offers') return AppStrings.specialOffersTitle;
    final clean = slug.replaceFirst('brand-', '').replaceAll('-', ' ');
    if (clean.isEmpty) return 'Products';
    return clean
        .split(' ')
        .map((w) => w.isEmpty ? '' : '${w[0].toUpperCase()}${w.substring(1)}')
        .join(' ');
  }

  List<ProductEntity> _applyFilters(List<ProductEntity> items) {
    final kw = _searchController.text.trim().toLowerCase();
    return items.where((p) {
      if (kw.isNotEmpty && !p.name.toLowerCase().contains(kw)) {
        return false;
      }
      if (_filter == 'On Sale' && !p.isOnSale) {
        return false;
      }
      if (_filter == 'Popular' && !p.isPopular) {
        return false;
      }
      return true;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final productsAsync = ref.watch(categoryProductsProvider(widget.slug));
    final favIds = ref.watch(favoriteIdsProvider).value ?? <String>{};
    final cartItems = ref.watch(cartSummaryProvider).value?.items ?? const [];
    final qtyById = {
      for (final item in cartItems) item.product.id: item.quantity,
    };
    final cartRepo = ref.read(cartRepositoryProvider);
    final catalogRepo = ref.read(catalogRepositoryProvider);

    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.navNavy,
        foregroundColor: AppColors.onPrimary,
        title: Text(_formatTitle(widget.slug)),
        actions: [
          IconButton(
            onPressed: () => context.go(AppConstants.routeCart),
            icon: const Icon(Icons.shopping_bag_outlined),
          ),
        ],
      ),
      body: productsAsync.when(
        loading: () => const AppLoadingView(),
        error: (_, _) => AppErrorView(
          onRetry: () => ref.invalidate(categoryProductsProvider(widget.slug)),
        ),
        data: (products) {
          final filtered = _applyFilters(products);
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.lg,
                  AppSpacing.md,
                  AppSpacing.lg,
                  AppSpacing.sm,
                ),
                child: AppSearchField(
                  controller: _searchController,
                  hintText: AppStrings.searchInCategoryPlaceholder,
                  onChanged: (_) => setState(() {}),
                  onClear: () => setState(_searchController.clear),
                ),
              ),
              SizedBox(
                height: 36,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: AppSpacing.screenHorizontal,
                  children: ['All', 'On Sale', 'Popular'].map((chip) {
                    final selected = _filter == chip;
                    return Padding(
                      padding: const EdgeInsets.only(right: AppSpacing.sm),
                      child: ChoiceChip(
                        label: Text(chip),
                        selected: selected,
                        selectedColor: AppColors.navNavy,
                        labelStyle: AppTypography.caption.copyWith(
                          color: selected
                              ? AppColors.onPrimary
                              : AppColors.inkPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                        onSelected: (_) => setState(() => _filter = chip),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: AppSpacing.sm),
              Expanded(
                child: filtered.isEmpty
                    ? AppEmptyView(
                        actionLabel: AppStrings.clear,
                        onAction: () => setState(() {
                          _searchController.clear();
                          _filter = 'All';
                        }),
                      )
                    : GridView.builder(
                        padding: const EdgeInsets.fromLTRB(
                          AppSpacing.lg,
                          AppSpacing.sm,
                          AppSpacing.lg,
                          108,
                        ),
                        itemCount: filtered.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: AppSpacing.md,
                          mainAxisSpacing: AppSpacing.md,
                          childAspectRatio: 0.72,
                        ),
                        itemBuilder: (context, index) {
                          final product = filtered[index];
                          final isFav = favIds.contains(product.id);
                          final qty = qtyById[product.id] ?? 0;
                          return _ProductGridCard(
                            product: product,
                            isFavorite: isFav,
                            cartQuantity: qty,
                            onTap: () => context.push(
                              AppConstants.productPath(product.id),
                            ),
                            onToggleFav: () =>
                                catalogRepo.toggleFavorite(product.id),
                            onAddToCart: () =>
                                cartRepo.addOrIncrement(product.id),
                            onDecrement: () => cartRepo.setQuantity(
                              product.id,
                              qty - 1,
                            ),
                          );
                        },
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _ProductGridCard extends StatelessWidget {
  const _ProductGridCard({
    required this.product,
    required this.isFavorite,
    required this.cartQuantity,
    required this.onTap,
    required this.onToggleFav,
    required this.onAddToCart,
    required this.onDecrement,
  });

  final ProductEntity product;
  final bool isFavorite;
  final int cartQuantity;
  final VoidCallback onTap;
  final VoidCallback onToggleFav;
  final VoidCallback onAddToCart;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.sm),
        decoration: const BoxDecoration(
          color: AppColors.surface,
          borderRadius: AppRadii.radiusLg,
          boxShadow: AppShadows.shadowCard,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: AppRadii.radiusMd,
                    child: Container(
                      width: double.infinity,
                      color: AppColors.surfaceTint,
                      child: Image.asset(
                        product.imageAsset,
                        fit: BoxFit.cover,
                        errorBuilder: (_, _, _) => const Icon(
                          Icons.local_grocery_store_outlined,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                  if (product.badgeText != null)
                    Positioned(
                      top: 6,
                      left: 6,
                      child: AppBadge(
                        label: product.badgeText!,
                        pill: true,
                      ),
                    ),
                  Positioned(
                    top: 4,
                    right: 4,
                    child: GestureDetector(
                      onTap: onToggleFav,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: AppColors.surface,
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          size: 16,
                          color:
                              isFavorite ? AppColors.error : AppColors.inkMuted,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
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
                if (cartQuantity > 0)
                  AppQuantityStepper(
                    quantity: cartQuantity,
                    onDecrement: onDecrement,
                    onIncrement: onAddToCart,
                  )
                else
                  AddToCartButton(
                    onTap: onAddToCart,
                    feedbackLabel: 'Added ${product.name} to cart',
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
