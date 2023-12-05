import 'package:flutter/material.dart';
import '../style/font_sizes_model.dart';
import '../constants/assets_awsome.dart';
import '../style/app_colors_awsome.dart';
import '../constants/strings_awsome.dart';
import '../extensions/dialogs/dialog_snackbar_bottom_extension_awsome.dart';

late final ConfigAwsome configAwsome;

class ConfigAwsome {
  /// # This for config
  ConfigAwsome({
    this.fontFamily = '',
    this.defaultPadding = 8.0,
    // this.buttonHeight,
    this.appColors = const AppColors(
      primaryColor: Color(0xFF6200EE),
      secondaryColor: Color(0xFF03DAC5),
      darkScaffoldBackgroundColor: Color(0xFF121212),
      lightScaffoldBackgroundColor: Color(0xFFFAFAFA),
    ),
    this.defaultBorderRadius = const BorderRadius.all(Radius.circular(10)),
    this.fontSizeModel = const FontSizeModel(
      small: 10,
      medium: 12,
      bold: 14,
      black: 16,
      extraBlack: 20.0,
    ),
    this.stringsAwsome = const StringsAwsome(),
    required this.appAssets,
    required this.messageType,
    this.duration = const Duration(seconds: 2),
    required this.lightTheme,
    required this.darkTheme,
    this.useCutomDesignDialog = true,
  }) {
    configAwsome = this;
  }

  /// ## some fields
  final String fontFamily;
  final ThemeData lightTheme;
  final ThemeData darkTheme;
  final Duration duration;
  final double defaultPadding;
  // final double? buttonHeight;
  final AppColors appColors;
  final BorderRadius defaultBorderRadius;
  final FontSizeModel fontSizeModel;
  final StringsAwsome stringsAwsome;
  final AssetsAwsome appAssets;
  final InteractiveTypes messageType;
  final bool useCutomDesignDialog;
}

/// ## input types like ( number , password or text )
enum InputTypes { number, password, text }

/// ## show text only , or text with widget
/// ## or text with Scaffold
// enum ShowWidgetTypes { text, icon, withScaffold, iconWithScaffold }
