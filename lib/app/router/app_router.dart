import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_constants.dart';
import 'package:remas_land/core/widgets/widgets.dart';
import 'package:remas_land/features/account/presentation/profile_screen.dart';
import 'package:remas_land/features/auth/presentation/login_screen.dart';
import 'package:remas_land/features/auth/presentation/register_screen.dart';
import 'package:remas_land/features/auth/presentation/splash_screen.dart';
import 'package:remas_land/features/cart/presentation/cart_provider.dart';
import 'package:remas_land/features/cart/presentation/cart_screen.dart';
import 'package:remas_land/features/catalog/presentation/category_products_screen.dart';
import 'package:remas_land/features/home/presentation/home_screen.dart';
import 'package:remas_land/features/search/presentation/search_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);

/// Line-count badge (distinct SKUs) so it matches Figma badge and "My Cart (N items)".
final cartLineCountProvider = Provider<int>((ref) {
  return ref.watch(cartSummaryProvider).value?.distinctItemCount ?? 0;
});

/// Live cart badge count provider — uses distinct SKU line count.
final cartBadgeCountProvider = Provider<int>((ref) {
  return ref.watch(cartLineCountProvider);
});

/// Declarative GoRouter configuration with a 5-tab StatefulShellRoute.
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppConstants.routeSplash,
    routes: [
      GoRoute(
        path: AppConstants.routeSplash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppConstants.routeLogin,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          transitionDuration: const Duration(milliseconds: 650),
          child: const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curved = CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOutCubic,
            );
            return FadeTransition(
              opacity: curved,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 0.06),
                  end: Offset.zero,
                ).animate(curved),
                child: child,
              ),
            );
          },
        ),
      ),
      GoRoute(
        path: AppConstants.routeRegister,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          transitionDuration: const Duration(milliseconds: 450),
          child: const RegisterScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curved = CurvedAnimation(
              parent: animation,
              curve: Curves.easeOutCubic,
            );
            return FadeTransition(
              opacity: curved,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.08, 0),
                  end: Offset.zero,
                ).animate(curved),
                child: child,
              ),
            );
          },
        ),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return _AppShellScaffold(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppConstants.routeHome,
                builder: (context, state) => const HomeScreen(),
              ),
              GoRoute(
                path: AppConstants.routeCategory,
                builder: (context, state) {
                  final slug = state.pathParameters['slug'] ?? 'all';
                  return CategoryProductsScreen(slug: slug);
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppConstants.routeSearch,
                builder: (context, state) => const SearchScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppConstants.routeCart,
                builder: (context, state) => const CartScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppConstants.routePay,
                builder: (context, state) =>
                    const CategoryProductsScreen(slug: 'all'),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppConstants.routeMore,
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),
      // Deeper pushed screens outside the shell (hide bottom bar)
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppConstants.routeProduct,
        builder: (context, state) => _PushedPlaceholderPage(
          title: 'Product ${state.pathParameters['id'] ?? ''}',
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppConstants.routeCheckout,
        builder: (context, state) =>
            const _PushedPlaceholderPage(title: 'Checkout'),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppConstants.routeOrders,
        builder: (context, state) =>
            const _PushedPlaceholderPage(title: 'Orders'),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppConstants.routeAddresses,
        builder: (context, state) =>
            const _PushedPlaceholderPage(title: 'Delivery Addresses'),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppConstants.routeRewards,
        builder: (context, state) =>
            const _PushedPlaceholderPage(title: 'Rewards'),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppConstants.routeFavorites,
        builder: (context, state) =>
            const _PushedPlaceholderPage(title: 'Favorites & Saved Lists'),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppConstants.routePromos,
        builder: (context, state) =>
            const _PushedPlaceholderPage(title: 'Promo Codes & Vouchers'),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppConstants.routeSettings,
        builder: (context, state) =>
            const _PushedPlaceholderPage(title: 'Settings & Preferences'),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppConstants.routeHelp,
        builder: (context, state) =>
            const _PushedPlaceholderPage(title: 'Help & FAQs'),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppConstants.routeChat,
        builder: (context, state) =>
            const _PushedPlaceholderPage(title: 'Chat with Us'),
      ),
    ],
  );
});

class _AppShellScaffold extends ConsumerWidget {
  const _AppShellScaffold({required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartCount = ref.watch(cartBadgeCountProvider);

    return Scaffold(
      extendBody: true,
      body: navigationShell,
      bottomNavigationBar: AppBottomNavBar(
        currentIndex: navigationShell.currentIndex,
        cartItemCount: cartCount,
        onTap: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      ),
    );
  }
}

class _PushedPlaceholderPage extends StatelessWidget {
  const _PushedPlaceholderPage({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title, style: AppTypography.sectionTitle)),
    );
  }
}
