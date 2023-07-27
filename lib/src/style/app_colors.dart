import 'package:flutter/material.dart';

class AppColors {
  AppColors({
    this.primaryColor = Colors.blue,
    this.secondaryColor = Colors.blue,
    this.lightScaffoldBackgroundColor =
        const Color.fromARGB(255, 252, 250, 250),
    this.darkScaffoldBackgroundColor = const Color.fromARGB(255, 185, 185, 185),
  });
  final Color primaryColor;
  final Color secondaryColor;

  /// # light theme color
  final Color lightScaffoldBackgroundColor;

  /// # dark theme color
  final Color darkScaffoldBackgroundColor;
}
