import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/router/app_router.dart';

void main() {
  // Ensure Flutter binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: BagifyEcommerceBagShop()));
}

class BagifyEcommerceBagShop extends StatelessWidget {
  const BagifyEcommerceBagShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Bagify - Ecommerce Bag Shop',
      debugShowCheckedModeBanner: false,
    );
  }
}
