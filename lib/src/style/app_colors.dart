import 'package:flutter/material.dart';

class AppColors {
  ///
  const AppColors({
    this.primaryColor = const Color.fromARGB(255, 19, 231, 210),
    this.secondaryColor = const Color.fromARGB(255, 227, 93, 138),
    this.lightScaffoldBackgroundColor = Colors.white,
    this.darkScaffoldBackgroundColor = Colors.grey,
    this.gradientAppColor,
  });

  ///
  final Color primaryColor;
  final Color secondaryColor;
  final Gradient? gradientAppColor;

  /// # light theme color
  final Color lightScaffoldBackgroundColor;

  /// # dark theme color
  final Color darkScaffoldBackgroundColor;
}
