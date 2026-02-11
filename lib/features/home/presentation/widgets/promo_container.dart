import 'package:flutter/material.dart';

import '../../../../core/widgets/widgets.dart';

class PromoContainer extends StatelessWidget {
  const PromoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      child: TCarouselView(
        maxHeight: 190.0,
        borderRadius: 20.0,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 0.0),
        children: List<Widget>.generate(4, (int index) {
          return Image.asset(
            './assets/images/promo_placeholder.png',
            fit: BoxFit.cover,
          );
        }),
      ),
    );
  }
}
