import 'package:flutter/material.dart';

import '../../../../core/extensions/extensions.dart';
import 'widgets.dart';

class ShoppingAssistantContainer extends StatelessWidget {
  const ShoppingAssistantContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 18.0),
          child: Text(
            'All Shopping Assistant',
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 44.0,
          child: ListView.separated(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 24.0),
            itemBuilder: (context, index) => const CategoryContainer(),
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 10.0);
            },
          ),
        ),
      ],
    );
  }
}
