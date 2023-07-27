import 'package:flutter/material.dart';

import '../style/app_colors.dart';

class ConfigAwsome {
  /// # This for config
  const ConfigAwsome({
    required this.fontFamily,
    this.defaultPadding = 10.0,
    required this.appColors,
    this.defaultBorderRadius = const BorderRadius.all(Radius.circular(10)),
  });

  /// some fields
  final double defaultPadding;
  final String fontFamily;
  final AppColors appColors;
  final BorderRadius defaultBorderRadius;
}

/// input types like if input is ( number , password or text )
enum InputTypes { number, password, text }
