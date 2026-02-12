import 'package:flutter/material.dart';

import '../../../../core/extensions/extensions.dart';

class ExploreStylesHeader extends StatelessWidget {
  const ExploreStylesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 30.0, 24.0, 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Explore Fresh Styles',
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'View All',
            style: context.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
