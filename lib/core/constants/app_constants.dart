/// Application-wide non-string constants, routes, and business defaults.
abstract final class AppConstants {
  // Route paths
  static const String routeSplash = '/splash';
  static const String routeLogin = '/login';
  static const String routeRegister = '/register';
  static const String routeHome = '/home';
  static const String routeSearch = '/search';
  static const String routeCart = '/cart';
  static const String routePay = '/pay';
  static const String routeMore = '/more';
  static const String routeCategory = '/category/:slug';
  static const String routeProduct = '/product/:id';
  static const String routeCheckout = '/checkout';
  static const String routeOrders = '/orders';
  static const String routeAddresses = '/addresses';
  static const String routeRewards = '/account/rewards';
  static const String routeFavorites = '/account/favorites';
  static const String routePromos = '/account/promos';
  static const String routeSettings = '/account/settings';
  static const String routeHelp = '/account/help';
  static const String routeChat = '/account/chat';

  static String categoryPath(String slug) => '/category/$slug';
  static String productPath(String id) => '/product/$id';

  // Order & fee defaults in integer piasters (100 piasters = 1.00 EGP)
  static const int piastersPerEgp = 100;
  static const int standardDeliveryFeePiasters = 2500;
  static const int coldPackagingFeePiasters = 1000;

  // Local database
  static const String databaseFileName = 'remas_land.sqlite';
  static const int currentSeedVersion = 1;

  // Demo flags
  // TODO(M9): Set seedDemoCart to false before release and clear seeded cart items.
  static const bool seedDemoCart = true;
}
