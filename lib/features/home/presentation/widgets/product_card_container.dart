import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/containers/circular_icon.dart';
import '../../../../core/widgets/containers/rounded_container.dart';

class ProductCardContainer extends StatelessWidget {
  const ProductCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        spacing: 0.0,
        crossAxisAlignment: .start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              TRoundedContainer(
                imageUrl: 'assets/images/bag_placeholder.png',
                height: 155,
                width: double.infinity,
                radius: 14.0,
                isNetworkImage: false,
                backgroundColor: context.colorScheme.secondary,
              ),
              const Positioned(
                top: 6.0,
                right: 6.0,
                child: CircularIcon(
                  width: 24.0,
                  height: 24.0,
                  size: 14.0,
                  icon: IconsaxPlusLinear.heart,
                  iconColor: Colors.black,

                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                bottom: -17.5,
                right: 0.0,
                left: 0.0,
                child: Align(
                  alignment: .center,
                  child: CircularIcon(
                    width: 35.0,
                    height: 35.0,
                    size: 16.0,
                    borderWidth: 4.0,
                    showBorder: true,
                    borderColor: Colors.grey.shade200,
                    icon: IconsaxPlusLinear.shopping_bag,
                    iconColor: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .end,
              spacing: 2.0,
              children: [
                Text(
                  'Shoulder Ruffle Dress',
                  style: context.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      '\$50.99',
                      style: context.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TRoundedContainer(
                      borderRadius: BorderRadius.circular(20.0),
                      backgroundColor: context.colorScheme.secondary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 7.0,
                        vertical: 3.0,
                      ),
                      child: Row(
                        spacing: 4.0,
                        children: [
                          const Icon(
                            Icons.star_outlined,
                            color: Colors.amber,
                            size: 12.0,
                          ),
                          Text(
                            '4K',
                            style: context.textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
