import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  /// Private constructor
  AppTheme._();

  /// Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: lightColorScheme,
      useMaterial3: true,
    );
  }

  /// Dark Theme
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: darkColorScheme,
      useMaterial3: true,
    );
  }
}
