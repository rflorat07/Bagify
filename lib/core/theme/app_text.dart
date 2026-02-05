import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme textTheme = const TextTheme(
    // Custom styles organized by fontSize from largest to smallest
    headlineMedium: TextStyle(
      // For fontSize 35 (large headlines)
      fontSize: 35.0,
      fontWeight: FontWeight.w600,
      height: 1.1,
      letterSpacing: 0.0,
    ),
    headlineSmall: TextStyle(
      // For fontSize 20 (small headlines)
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      height: 0.9,
      letterSpacing: -0.28,
    ),
    titleMedium: TextStyle(
      // For fontSize 18 (medium titles)
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 0.0,
    ),
    bodyLarge: TextStyle(
      // For fontSize 16 (large body text)
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      height: 1.2,
      letterSpacing: 0.0,
    ),
    bodyMedium: TextStyle(
      // For fontSize 14 (medium body text)
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      height: 1.4,
      letterSpacing: 0.0,
    ),
    bodySmall: TextStyle(
      // For fontSize 12 (small body text)
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      height: 1.2,
      letterSpacing: 0.0,
    ),
    labelMedium: TextStyle(
      // For fontSize 10 (medium labels)
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      height: 1.2,
      letterSpacing: 0.0,
    ),
    labelSmall: TextStyle(
      // For fontSize 6 (small labels)
      fontSize: 6.0,
      fontWeight: FontWeight.w400,
      height: 1.2,
      letterSpacing: 0.0,
    ),
  );
}
