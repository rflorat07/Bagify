import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../extensions/extensions.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.boxShadow,
    this.onPressed,
    this.iconColor,
    this.icon,
    this.svgIcon,
    this.backgroundColor,
    this.size = 20.0,
    this.borderWidth = 1.0,
    this.showBorder = false,
    this.borderRadius = 100.0,
    this.borderColor = Colors.grey,
  });

  final IconData? icon;
  final bool showBorder;
  final Color? iconColor;
  final Color borderColor;
  final SvgPicture? svgIcon;
  final BoxShadow? boxShadow;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final double? width, height, size;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double borderRadius, borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color:
            backgroundColor ??
            (context.isDarkMode
                ? Colors.black.withValues(alpha: 0.9)
                : Colors.white.withValues(alpha: 0.9)),
        borderRadius: BorderRadius.circular(borderRadius),
        border: showBorder
            ? Border.all(color: borderColor, width: borderWidth)
            : null,
        boxShadow: boxShadow != null ? [boxShadow!] : null,
      ),
      child: IconButton(
        padding: const EdgeInsets.all(0.0),
        onPressed: onPressed,
        icon: svgIcon ?? Icon(icon, color: iconColor, size: size),
      ),
    );
  }
}
