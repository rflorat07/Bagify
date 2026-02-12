import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/entities.dart';
import '../providers/providers.dart';
import 'widgets.dart';

class ShoppingAssistantContainer extends ConsumerWidget {
  const ShoppingAssistantContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncAssistantCategories = ref.watch(assistantCategoriesProvider);

    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 18.0),
          child: Text(
            'All Shopping Assistant',
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 44.0,
          child: switch (asyncAssistantCategories) {
            AsyncData(:final value) => _ShoppingAssistantData(value: value),
            AsyncError() => const CustomErrorSnackBar(
              message:
                  'We couldn\'t load the shopping assistant categories . Please try again.',
              widget: _ShoppingAssistantDataSkeleton(),
            ),
            _ => const _ShoppingAssistantDataSkeleton(),
          },
        ),
      ],
    );
  }
}

class _ShoppingAssistantData extends StatelessWidget {
  const _ShoppingAssistantData({required this.value});

  final List<AssistantCategory> value;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: value.length,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 24.0),
      itemBuilder: (context, index) =>
          CategoryContainerChip(value: value[index]),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 10.0);
      },
    );
  }
}

class _ShoppingAssistantDataSkeleton extends StatelessWidget {
  const _ShoppingAssistantDataSkeleton();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 24.0),
      itemBuilder: (context, index) => const CategoryContainerChipSkeleton(),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 10.0);
      },
    );
  }
}
