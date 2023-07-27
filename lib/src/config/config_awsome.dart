import 'package:flutter/material.dart';
import '../../awsome_tools.dart';

late ConfigAwsome configAwsome;

class ConfigAwsome {
  /// # This for config
  const ConfigAwsome({
    this.fontFamily = '',
    required this.textStyleAwsome,
    this.defaultPadding = 10.0,
    required this.appColors,
    this.defaultBorderRadius = const BorderRadius.all(Radius.circular(10)),
    required this.fontModel,
    required this.darkTheme,
    required this.lightTheme,
  });

  /// ## some fields
  final double defaultPadding;
  final String fontFamily;
  final AppColors appColors;
  final BorderRadius defaultBorderRadius;
  final FontSizeModel fontModel;
  final TextStylesAwsome textStyleAwsome;
  final LightThemeAwsome lightTheme;
  final DarkThemeAwsome darkTheme;

  /// inital
  void init(ConfigAwsome yourConfigAwsome) {
    configAwsome = yourConfigAwsome;
  }
}

/// ## input types like if input
/// # is ( number , password or text )
enum InputTypes { number, password, text }

/// ## show text only , or text with widget
enum ShowWidgetTypes { text, icon, withScaffold, iconWithScaffold }
