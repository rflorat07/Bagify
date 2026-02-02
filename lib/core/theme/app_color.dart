import 'package:flutter/material.dart';

class AppColor {
  static const primary = 0xFFFFFFFF;
  static const secondary = 0xFFF8F8F8;
  static const background = 0xFFF8F8F8;
  static const surface = 0xFFF8F8F8;
  static const error = 0xFFB00020;
  static const onPrimary = 0xFFFFFFFF;
  static const onSecondary = 0xFF000000;
  static const onBackground = 0xFF000000;
  static const onSurface = 0xFF000000;
  static const onError = 0xFFFFFFFF;
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(AppColor.primary),
  onPrimary: Color(AppColor.onPrimary),
  secondary: Color(AppColor.secondary),
  onSecondary: Color(AppColor.onSecondary),
  surface: Color(AppColor.surface),
  onSurface: Color(AppColor.onSurface),
  error: Color(AppColor.error),
  onError: Color(AppColor.onError),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(AppColor.primary),
  onPrimary: Color(AppColor.onPrimary),
  secondary: Color(AppColor.secondary),
  onSecondary: Color(AppColor.onSecondary),
  surface: Color(AppColor.surface),
  onSurface: Color(AppColor.onSurface),
  error: Color(AppColor.error),
  onError: Color(AppColor.onError),
);
