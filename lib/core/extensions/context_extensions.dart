import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

extension ContextExtensions on BuildContext {
  // --- THEME ACCESSORS ---

  /// Shortcut for Theme.of(context)
  ThemeData get theme => Theme.of(this);

  /// Shortcut for Theme.of(context).textTheme
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Shortcut for Theme.of(context).colorScheme
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// Returns true if the app is currently rendering in Dark Mode.
  /// Based on the current App Theme brightness.
  bool get isDarkMode => theme.brightness == Brightness.dark;

  /// Returns true if the app is currently rendering in Light Mode.
  bool get isLightMode => !isDarkMode;

  /// Returns the OS/System level brightness preference.
  bool get isSystemDarkMode =>
      SchedulerBinding.instance.platformDispatcher.platformBrightness ==
      Brightness.dark;

  // --- SCREEN SIZE & BREAKPOINTS ---

  /// The full size of the screen
  Size get screenSize => MediaQuery.sizeOf(this);

  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;

  /// Returns true if the device is a phone (Small screen)
  bool get isMobile => screenWidth < 600;

  /// Returns true if the device is a tablet
  bool get isTablet => screenWidth >= 600 && screenWidth < 1024;

  /// Returns true if the device is a Desktop
  bool get isDesktop => screenWidth >= 1024;

  // --- SPACING HELPER ---

  /// Returns a responsive padding based on screen size
  EdgeInsets get responsivePadding {
    if (isDesktop) return const EdgeInsets.all(32.0);
    if (isTablet) return const EdgeInsets.all(24.0);
    return const EdgeInsets.all(16.0);
  }

  // --- UI ACTIONS ---

  /// Hides the soft keyboard
  void hideKeyboard() => FocusScope.of(this).unfocus();

  /// Shows a standard SnackBar
  void showSnackBar(String message, {Color? backgroundColor}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: backgroundColor ?? colorScheme.primary,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  /// Shows an error SnackBar using the theme's error color
  void showErrorSnackBar(String message) {
    showSnackBar(
      message,
      backgroundColor: colorScheme.error,
    );
  }

  // --- NAVIGATION (SIMPLE) ---

  /// Pops the current route
  void pop<T>([T? result]) => Navigator.of(this).pop(result);
}
