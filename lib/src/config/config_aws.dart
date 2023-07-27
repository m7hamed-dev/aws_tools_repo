import 'package:flutter/material.dart';

class ConfigAwsome {
  /// # This for config
  const ConfigAwsome({
    required this.fontFamily,
    this.defaultPadding = 10.0,
    this.secondaryColor = const Color.fromARGB(255, 142, 175, 203),
    this.primaryColor = Colors.blue,
    this.defaultBorderRadius = const BorderRadius.all(Radius.circular(10)),
  });

  /// some fields
  final double defaultPadding;
  final String fontFamily;
  final Color secondaryColor;
  final Color primaryColor;
  final BorderRadius defaultBorderRadius;
}
