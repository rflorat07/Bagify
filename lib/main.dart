import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // Ensure Flutter binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: BagifyEcommerceBagShop()));
}

class BagifyEcommerceBagShop extends StatelessWidget {
  const BagifyEcommerceBagShop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bagify - Ecommerce Bag Shop',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
