import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class BagifyHomeScreen extends StatelessWidget {
  const BagifyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: .start,
        children: [
          const HeaderContainer(),
          Expanded(
            child: ListView(
              children: const [
                ShoppingAssistantContainer(),
                PromoContainer(),
                ExploreStylesHeader(),
                ExploreStylesContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
