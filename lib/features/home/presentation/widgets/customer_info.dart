import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/entities.dart';
import '../providers/providers.dart';

class CustomerInfo extends ConsumerWidget {
  const CustomerInfo({
    super.key,
    this.onSearchPressed,
    this.onNotificationsPressed,
  });

  final VoidCallback? onSearchPressed;
  final VoidCallback? onNotificationsPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncUser = ref.watch(userProvider);

    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 24.0),
      child: switch (asyncUser) {
        AsyncData(:final value) => _CustomerInfoData(
          value: value,
          onSearchPressed: onSearchPressed,
          onNotificationsPressed: onNotificationsPressed,
        ),
        AsyncError() => const CustomErrorSnackBar(
          message: 'We couldn\'t load your profile. Please try again.',
          widget: _CustomerInfoSkeleton(),
        ),
        _ => const _CustomerInfoSkeleton(),
      },
    );
  }
}

class _CustomerInfoData extends StatelessWidget {
  const _CustomerInfoData({
    required this.value,
    this.onSearchPressed,
    this.onNotificationsPressed,
  });

  final User value;
  final VoidCallback? onSearchPressed;
  final VoidCallback? onNotificationsPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            spacing: 10.0,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularImage(
                width: 52.0,
                height: 52.0,
                image: value.image,
                isNetworkImage: true,
                backgroundColor: Colors.white,
              ),
              Expanded(
                child: Column(
                  spacing: 6.0,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      value.fullName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.headlineSmall,
                    ),
                    Text(
                      'Welcome to the Marketplace ',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 60.0,
          padding: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Row(
            spacing: 20.0,
            children: [
              CircularIcon(
                width: 52.0,
                height: 52.0,
                icon: IconsaxPlusLinear.search_normal_1,
                iconColor: Colors.black,
                backgroundColor: Colors.white,
                onPressed: onSearchPressed,
              ),
              CircularIcon(
                width: 52.0,
                height: 52.0,
                icon: IconsaxPlusLinear.notification_bing,
                iconColor: Colors.black,
                backgroundColor: Colors.white,
                onPressed: onNotificationsPressed,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ...existing code...
class _CustomerInfoSkeleton extends StatelessWidget {
  const _CustomerInfoSkeleton();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            spacing: 10.0,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleSkeleton(size: 52),
              Expanded(
                child: Column(
                  spacing: 10.0,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Skeleton(width: 87, height: 9),
                    Skeleton(width: 105, height: 7),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          spacing: 20.0,
          children: [
            CircleSkeleton(size: 52),
            CircleSkeleton(size: 52),
          ],
        ),
      ],
    );
  }
}
