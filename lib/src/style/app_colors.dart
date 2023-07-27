import 'package:flutter/material.dart';

class AppColors {
  ///
  const AppColors({
    this.primaryColor = Colors.pink,
    this.secondaryColor = Colors.pinkAccent,

    ///
    this.lightScaffoldBackgroundColor = Colors.white,

    ///
    this.darkScaffoldBackgroundColor = Colors.grey,
  });

  ///
  final Color primaryColor;
  final Color secondaryColor;

  /// # light theme color
  final Color lightScaffoldBackgroundColor;

  /// # dark theme color
  final Color darkScaffoldBackgroundColor;
}
