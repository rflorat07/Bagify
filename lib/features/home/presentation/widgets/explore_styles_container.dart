import 'package:flutter/material.dart';

import 'widgets.dart';

class ExploreStylesContainer extends StatelessWidget {
  const ExploreStylesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 24.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 12.0,
        childAspectRatio: 0.75,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return const ProductCardContainer();
      },
    );
  }
}
