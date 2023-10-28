import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ThemeData get currentTheme => Theme.of(this);
  bool get isDarkTheme => currentTheme.brightness == Brightness.dark;
}
