import 'package:flutter/material.dart';

import '../../extensions/context_extensions.dart';

class TCarouselView extends StatelessWidget {
  const TCarouselView({
    super.key,
    this.onTap,
    required this.children,
    required this.maxHeight,
    this.widthFactor = 1.0,
    this.showBorderSide = false,
    this.backgroundColor = Colors.white,
    this.overlayColor = Colors.transparent,
    this.borderSideColor = Colors.black,
    this.borderRadius = 16.0,
    this.padding = const EdgeInsets.only(left: 24.0),
  });

  final Color? overlayColor, backgroundColor;
  final List<Widget> children;
  final EdgeInsets padding;
  final double widthFactor, maxHeight, borderRadius;
  final Color borderSideColor;
  final bool showBorderSide;
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: maxHeight),
      child: CarouselView(
        onTap: onTap,
        itemSnapping: true,
        overlayColor: WidgetStateProperty.all(overlayColor),
        shrinkExtent: context.screenWidth * widthFactor,
        itemExtent: context.screenWidth * widthFactor,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: showBorderSide
              ? BorderSide(color: borderSideColor)
              : BorderSide.none,
        ),
        padding: padding,
        children: children,
      ),
    );
  }
}
