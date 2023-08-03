import 'package:flutter/material.dart';
import '../../awsome_tools.dart';

late ConfigAwsome configAwsome;

class ConfigAwsome {
  /// # This for config
  ConfigAwsome({
    this.fontFamily = '',
    this.defaultPadding = 8.0,
    this.buttonHeight,
    required this.appColors,
    this.defaultBorderRadius = const BorderRadius.all(Radius.zero),
    required this.fontSizeModel,
    required this.stringsAwsome,
    required this.appAssets,
    required this.messageType,
    this.duration = const Duration(seconds: 4),
    required this.lightTheme,
    required this.darkTheme,
  });

  /// ## some fields
  final String fontFamily;
  final ThemeData lightTheme;
  final ThemeData darkTheme;
  final Duration duration;
  final double defaultPadding;
  final double? buttonHeight;
  final AppColors appColors;
  final BorderRadius defaultBorderRadius;
  final FontSizeModel fontSizeModel;
  final StringsAwsome stringsAwsome;
  final AssetsAwsome appAssets;
  final MessageInteractiveTypes messageType;

  /// inital configuration
  void init(ConfigAwsome yourConfigAwsome) {
    configAwsome = yourConfigAwsome;
  }
}

/// ## input types like ( number , password or text )
enum InputTypes { number, password, text }

/// ## show text only , or text with widget
/// ## or text with Scaffold
// enum ShowWidgetTypes { text, icon, withScaffold, iconWithScaffold }
