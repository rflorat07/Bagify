import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../extensions/extensions.dart';
import '../../providers/providers.dart';
import '../widgets.dart';

class CustomBottomNavBarItem extends ConsumerWidget {
  const CustomBottomNavBarItem({
    super.key,
    required this.index,
    required this.icon,
    required this.selectedIcon,
    this.showNotificationDot = false,
  });

  final int index;
  final IconData icon;
  final IconData selectedIcon;
  final bool showNotificationDot;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navigationControllerProvider);

    return CircularIcon(
      width: 44.0,
      height: 44.0,
      iconColor: currentIndex == index ? Colors.white : Colors.black,
      icon: currentIndex == index ? selectedIcon : icon,
      backgroundColor: currentIndex == index
          ? Colors.black
          : context.colorScheme.secondary,
      onPressed: () {
        ref.read(navigationControllerProvider.notifier).setIndex(index);
      },
    );
  }
}
