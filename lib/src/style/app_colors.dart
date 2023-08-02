import 'package:flutter/material.dart';

const primaryColorAwsome = Color.fromARGB(255, 9, 153, 139);
const secondaryColorAwsome = Color.fromARGB(255, 128, 204, 196);

class AppColors {
  ///
  const AppColors({
    this.primaryColor = primaryColorAwsome,
    this.secondaryColor = secondaryColorAwsome,
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
