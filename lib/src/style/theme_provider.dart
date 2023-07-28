// Create an InheritedWidget to hold the theme data
import 'package:flutter/material.dart';
import 'app_theme_awsome.dart';

class ThemeProviderAwsome extends InheritedWidget {
  const ThemeProviderAwsome({
    super.key,
    required this.theme,
    required Widget child,
  }) : super(child: child);

  final AppThemeAwsome theme;

  /// Helper method to easily access the ThemeProvider from any widget
  static ThemeProviderAwsome of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProviderAwsome>()!;
  }

  @override
  bool updateShouldNotify(ThemeProviderAwsome oldWidget) {
    return theme != oldWidget.theme;
  }
}
