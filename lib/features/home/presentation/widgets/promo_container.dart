import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/promo.dart';
import '../providers/providers.dart';

class PromoContainer extends ConsumerWidget {
  const PromoContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncPromo = ref.watch(promoProvider);

    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      child: switch (asyncPromo) {
        AsyncData(:final value) => _PromoContainerData(value: value),
        AsyncError() => const CustomErrorSnackBar(
          message:
              'We couldn\'t load the promotional banners . Please try again.',
          widget: PromoContainerDataSkeleton(),
        ),
        _ => const PromoContainerDataSkeleton(),
      },
    );
  }
}

class _PromoContainerData extends StatelessWidget {
  const _PromoContainerData({
    required this.value,
  });

  final List<Promo> value;

  @override
  Widget build(BuildContext context) {
    return TCarouselView(
      maxHeight: 190.0,
      borderRadius: 20.0,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 0.0,
      ),
      children: value.map((promo) {
        return CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: promo.image,
          progressIndicatorBuilder: (context, url, progress) => Center(
            child: CircularProgressIndicator(
              value: progress.progress,
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        );
      }).toList(),
    );
  }
}

class PromoContainerDataSkeleton extends StatelessWidget {
  const PromoContainerDataSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 0.0,
      ),
      child: Skeleton(
        width: double.infinity,
        height: 190.0,
        radius: 20.0,
        defaultPadding: 0.0,
      ),
    );
  }
}
