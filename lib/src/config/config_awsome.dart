import 'package:awsome_tools/src/style/font_sizes.dart';
import 'package:awsome_tools/src/style/txt_style.dart';
import 'package:flutter/material.dart';
import '../style/app_colors.dart';

class ConfigAwsome {
  /// # This for config
  const ConfigAwsome({
    required this.fontFamily,
    required this.textStyleAwsome,
    this.defaultPadding = 10.0,
    required this.appColors,
    this.defaultBorderRadius = const BorderRadius.all(Radius.circular(10)),
    required this.fontModel,
  });

  /// some fields
  final double defaultPadding;
  final String fontFamily;
  final AppColors appColors;
  final BorderRadius defaultBorderRadius;
  final FontSizeModel fontModel;
  final TextStyleAwsome textStyleAwsome;
}

/// input types like if input is ( number , password or text )
enum InputTypes { number, password, text }
