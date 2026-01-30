import 'package:go_router/go_router.dart';

import '../../features/details/presentation/screens/details_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../../features/scanner /presentation/screens/home_screen.dart';
import '../../features/shopping/presentation/screens/shopping_screen.dart';
import '../../features/wishlist/presentation/screens/wishlist_screen.dart';

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
  initialLocation: AppRoutes.bagifyHome,
  routes: [
    /// Bagify Store Routes
    GoRoute(
      path: AppRoutes.bagifyHome,
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
);
