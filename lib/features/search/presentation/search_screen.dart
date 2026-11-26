import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_constants.dart';
import 'package:remas_land/core/constants/app_strings.dart';
import 'package:remas_land/core/widgets/widgets.dart';
import 'package:remas_land/features/cart/presentation/cart_provider.dart';
import 'package:remas_land/features/catalog/domain/product_entity.dart';
import 'package:remas_land/features/search/domain/search_query_entity.dart';
import 'package:remas_land/features/search/presentation/search_provider.dart';

/// Search & Discover tab screen (route `/search`).
class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final _controller = TextEditingController();
  bool _onSaleOnly = false;

  static const List<String> _popularTags = [
    'Milk',
    'Cheese',
    'Yogurt',
    'Butter',
    'Qashtouta',
    'Honey',
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final query = SearchQueryEntity(
      keyword: _controller.text.trim(),
      onSaleOnly: _onSaleOnly,
    );
    final resultsAsync = ref.watch(searchResultsProvider(query));
    final cartRepo = ref.read(cartRepositoryProvider);

    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.navNavy,
        foregroundColor: AppColors.onPrimary,
        title: const Text(AppStrings.navSearch),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.lg,
              AppSpacing.md,
              AppSpacing.lg,
              AppSpacing.sm,
            ),
            child: AppSearchField(
              controller: _controller,
              hintText: AppStrings.searchPlaceholder,
              onChanged: (_) => setState(() {}),
              onClear: () => setState(_controller.clear),
            ),
          ),
          Padding(
            padding: AppSpacing.screenHorizontal,
            child: Row(
              children: [
                const Text(
                  AppStrings.popularSearchesOverline,
                  style: AppTypography.overline,
                ),
                const Spacer(),
                FilterChip(
                  label: const Text('On Sale'),
                  selected: _onSaleOnly,
                  selectedColor: AppColors.surfaceTintStrong,
                  onSelected: (v) => setState(() => _onSaleOnly = v),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 38,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: AppSpacing.screenHorizontal,
              itemCount: _popularTags.length,
              separatorBuilder: (_, _) => const SizedBox(width: AppSpacing.sm),
              itemBuilder: (context, index) {
                final tag = _popularTags[index];
                return ActionChip(
                  label: Text(tag),
                  backgroundColor: AppColors.surface,
                  onPressed: () {
                    _controller.text = tag;
                    setState(() {});
                  },
                );
              },
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Expanded(
            child: resultsAsync.when(
              loading: () => const AppLoadingView(),
              error: (_, _) => AppErrorView(
                onRetry: () => ref.invalidate(searchResultsProvider(query)),
              ),
              data: (products) {
                if (products.isEmpty) {
                  return AppEmptyView(
                    actionLabel: AppStrings.clear,
                    onAction: () => setState(() {
                      _controller.clear();
                      _onSaleOnly = false;
                    }),
                  );
                }
                return ListView.separated(
                  padding: const EdgeInsets.fromLTRB(
                    AppSpacing.lg,
                    AppSpacing.sm,
                    AppSpacing.lg,
                    108,
                  ),
                  itemCount: products.length,
                  separatorBuilder: (_, _) =>
                      const SizedBox(height: AppSpacing.sm),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return _SearchResultTile(
                      product: product,
                      onTap: () =>
                          context.push(AppConstants.productPath(product.id)),
                      onAddToCart: () => cartRepo.addOrIncrement(product.id),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchResultTile extends StatelessWidget {
  const _SearchResultTile({
    required this.product,
    required this.onTap,
    required this.onAddToCart,
  });

  final ProductEntity product;
  final VoidCallback onTap;
  final VoidCallback onAddToCart;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: onTap,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: AppRadii.radiusMd,
            child: Container(
              width: 64,
              height: 64,
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
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: AppTypography.bodySemiBold,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: AppSpacing.xs),
                AppPriceText(
                  pricePiasters: product.pricePiasters,
                  originalPricePiasters: product.originalPricePiasters,
                  fontSize: 13,
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          AddToCartButton(
            onTap: onAddToCart,
            feedbackLabel: 'Added ${product.name} to cart',
          ),
        ],
      ),
    );
  }
}
