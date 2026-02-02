import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/index.dart';

class AppRoutes {
  static const String bagifyHome = 'bagify-store/home';
  static const String bagifyDetails = 'bagify-store/details';
  static const String bagifyShopping = 'bagify-store/shopping';
  static const String bagifyProfile = 'bagify-store/profile';
  static const String bagifyScanner = 'bagify-store/scanner';
  static const String bagifyWishlist = 'bagify-store/wishlist';

  /// Private constructor
  AppRoutes._();
}

/// Router configuration

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    /// Bagify Store Routes
    GoRoute(
      path: '/',
      name: 'bagify-home',
      builder: (context, state) => const BagifyHomeScreen(),
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
  ],
  errorBuilder: (context, state) => Text('Router Error: ${state.error}'),
);
