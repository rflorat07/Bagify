import 'package:flutter/material.dart';

import 'theme.dart';

class AppTheme {
  /// Private constructor
  AppTheme._();

  /// Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Urbanist',
      brightness: Brightness.light,
      colorScheme: lightColorScheme,
      textTheme: AppTextTheme.textTheme,
    );
  }

  /// Dark Theme
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Urbanist',
      brightness: Brightness.dark,
      colorScheme: darkColorScheme,
      textTheme: AppTextTheme.textTheme,
    );
  }
}
