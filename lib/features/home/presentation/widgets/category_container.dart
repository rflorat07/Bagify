import 'package:flutter/material.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/entities.dart';

class CategoryContainerChip extends StatelessWidget {
  const CategoryContainerChip({super.key, required this.value});

  final AssistantCategory value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(4.0, 4.0, 10.0, 4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        spacing: 4.0,
        crossAxisAlignment: .center,
        children: [
          CircularImage(
            width: 36.0,
            height: 36.0,
            image: value.image,
            isNetworkImage: true,
            backgroundColor: context.colorScheme.tertiary,
          ),
          Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .start,
            children: [
              Text(
                value.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'See All ${value.name}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.labelSmall?.copyWith(
                  color: Colors.black.withValues(alpha: 0.4),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryContainerChipSkeleton extends StatelessWidget {
  const CategoryContainerChipSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(4.0, 4.0, 10.0, 4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: const Row(
        spacing: 4.0,
        crossAxisAlignment: .center,
        children: [
          CircleSkeleton(size: 36.0),
          Column(
            spacing: 4.0,
            mainAxisAlignment: .center,
            crossAxisAlignment: .start,
            children: [
              Skeleton(width: 41, height: 10),
              Skeleton(width: 40, height: 7),
            ],
          ),
        ],
      ),
    );
  }
}
