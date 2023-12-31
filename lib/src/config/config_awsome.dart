import '../../awsome_tools.dart';
import 'package:flutter/material.dart';

late final ConfigAwsome configAwsome;

class ConfigAwsome {
  /// # This for config
  ConfigAwsome({
    this.fontFamily = '',
    this.defaultPadding = 10.0,
    this.appColors = const AppColors(
      primaryColor: Color.fromARGB(255, 5, 155, 12),
      secondaryColor: Color(0xFF03DAC5),
      darkScaffoldBackgroundColor: Color(0xFF121212),
      lightScaffoldBackgroundColor: Color(0xFFFAFAFA),
    ),
    this.defaultBorderRadius = const BorderRadius.all(
      Radius.circular(10),
    ),
    this.fontSizeModel = const FontSizeModel(
      small: 10,
      medium: 12,
      bold: 14,
      black: 16,
      extraBlack: 20.0,
    ),
    this.stringsAwsome = const StringsAwsome(),
    // required this.appAssets,
    required this.messageType,
    this.duration = const Duration(seconds: 4),
    required this.lightTheme,
    required this.darkTheme,
    this.useCutomDesignDialog = true,
  }) {
    configAwsome = this;
  }

  final String fontFamily;
  final ThemeData lightTheme;
  final ThemeData darkTheme;
  final Duration duration;
  final double defaultPadding;
  final AppColors appColors;
  final BorderRadius defaultBorderRadius;
  final FontSizeModel fontSizeModel;
  final StringsAwsome stringsAwsome;
  // final AssetsAwsome appAssets;
  final InteractiveTypes messageType;
  final bool useCutomDesignDialog;
}

/// ## input types like ( number , password or text )
enum InputTypes { number, password, text }
