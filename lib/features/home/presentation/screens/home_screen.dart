import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class BagifyHomeScreen extends StatelessWidget {
  const BagifyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: .start,
        children: [
          HeaderContainer(),
          ShoppingAssistantContainer(),
        ],
      ),
    );
  }
}
