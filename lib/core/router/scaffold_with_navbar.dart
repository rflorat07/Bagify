import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../features/index.dart';
import '../extensions/extensions.dart';
import '../providers/providers.dart';
import '../widgets/widgets.dart';

class ScaffoldWithNavBar extends ConsumerWidget {
  const ScaffoldWithNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navigationControllerProvider);

    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          BagifyHomeScreen(),
          BagifyShoppingScreen(),
          BagifyScannerScreen(),
          BagifyWishlistScreen(),
          BagifyProfileScreen(),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 58.0,
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          padding: const EdgeInsets.all(7.0),
          decoration: BoxDecoration(
            color: context.colorScheme.primary,
            borderRadius: BorderRadius.circular(44.0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBottomNavBarItem(
                index: 0,
                icon: IconsaxPlusLinear.home_1,
                selectedIcon: IconsaxPlusBold.home_1,
              ),
              CustomBottomNavBarItem(
                index: 1,
                showNotificationDot: true,
                icon: IconsaxPlusLinear.shopping_bag,
                selectedIcon: IconsaxPlusBold.shopping_bag,
              ),
              CustomBottomNavBarItem(
                index: 2,
                showNotificationDot: true,
                icon: IconsaxPlusLinear.scanner,
                selectedIcon: IconsaxPlusBold.scanner,
              ),
              CustomBottomNavBarItem(
                index: 3,
                icon: IconsaxPlusLinear.heart,
                selectedIcon: IconsaxPlusBold.heart,
              ),
              CustomBottomNavBarItem(
                index: 4,
                icon: IconsaxPlusLinear.profile,
                selectedIcon: IconsaxPlusBold.profile,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
