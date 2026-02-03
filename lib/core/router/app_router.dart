import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/index.dart';
import '../widgets/widgets.dart';

class AppRoutes {
  /// Bagify Store Routes Home
  static const String bagifyHome = 'bagify-store/home';

  /// Bagify Store Routes Details
  static const String bagifyDetails = 'bagify-store/details';

  /// Bagify Store Routes Shopping
  static const String bagifyShopping = 'bagify-store/shopping';

  /// Bagify Store Routes Profile
  static const String bagifyProfile = 'bagify-store/profile';

  /// Bagify Store Routes Scanner
  static const String bagifyScanner = 'bagify-store/scanner';

  /// Bagify Store Routes Wishlist
  static const String bagifyWishlist = 'bagify-store/wishlist';

  /// Custom bottom navigation bar route
  static const String customBottomNavBar = '/custom-bottom-nav-bar';

  /// Private constructor
  AppRoutes._();
}

/// Router configuration

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.customBottomNavBar,
  routes: [
    /// Bagify Store Routes
    GoRoute(
      path: AppRoutes.bagifyHome,
      name: 'bagify-home',
      builder: (context, state) => BagifyHomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.bagifyDetails,
      name: 'bagify-details',
      builder: (context, state) => const BagifyDetailsScreen(),
    ),
    GoRoute(
      path: AppRoutes.bagifyProfile,
      name: 'bagify-profile',
      builder: (context, state) => const BagifyProfileScreen(),
    ),
    GoRoute(
      path: AppRoutes.bagifyScanner,
      name: 'bagify-scanner',
      builder: (context, state) => const BagifyScannerScreen(),
    ),
    GoRoute(
      path: AppRoutes.bagifyShopping,
      name: 'bagify-shopping',
      builder: (context, state) => const BagifyShoppingScreen(),
    ),
    GoRoute(
      path: AppRoutes.bagifyWishlist,
      name: 'bagify-wishlist',
      builder: (context, state) => const BagifyWishlistScreen(),
    ),
    GoRoute(
      path: AppRoutes.customBottomNavBar,
      name: 'custom-bottom-nav-bar',
      builder: (context, state) => const ScaffoldWithNavBar(),
    ),
  ],
  errorBuilder: (context, state) => Text('Router Error: ${state.error}'),
);
