import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

class BagifyHomeScreen extends StatelessWidget {
  BagifyHomeScreen({super.key});

  final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F'];
  final List<int> colorCodes = <int>[600, 500, 100, 200, 300, 400];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomerInfo(),
          Expanded(
            child: ListView.builder(
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 250,
                  color: Colors.amber[colorCodes[index]],
                  child: Center(child: Text('Entry ${entries[index]}')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomerInfo extends StatelessWidget {
  const CustomerInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 24.0),
      child: Row(
        children: [
          Expanded(
            child: Row(
              spacing: 10.0,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircularImage(
                  width: 52.0,
                  height: 52.0,
                  image: 'https://dummyjson.com/icon/emilys/128',
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
                        'Arisha Ireen',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.headlineSmall,
                      ),
                      Text(
                        'Welcome to the Marketplace',
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
                  onPressed: () {},
                ),
                CircularIcon(
                  width: 52.0,
                  height: 52.0,
                  icon: IconsaxPlusLinear.notification_bing,
                  iconColor: Colors.black,
                  backgroundColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
