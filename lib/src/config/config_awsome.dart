import 'package:awsome_tools/src/extensions/dialog_snackbar_bottom_extension_awsome.dart';
import 'package:flutter/material.dart';
import '../../awsome_tools.dart';

late ConfigAwsome configAwsome;

class ConfigAwsome {
  /// # This for config
  const ConfigAwsome({
    this.fontFamily = '',
    this.defaultPadding = 10.0,
    required this.appColors,
    this.defaultBorderRadius = const BorderRadius.all(Radius.circular(10)),
    required this.fontModel,
    required this.darkTheme,
    required this.lightTheme,
    required this.appMessage,
    required this.appSource,
    required this.messageType,
  });

  /// ## some fields
  final String fontFamily;
  final double defaultPadding;
  final AppColors appColors;
  final BorderRadius defaultBorderRadius;
  final FontSizeModel fontModel;
  final LightThemeAwsome lightTheme;
  final DarkThemeAwsome darkTheme;
  final AppMessage appMessage;
  final AppSource appSource;
  final MessageTypes messageType;

  /// inital configuration
  void init(ConfigAwsome yourConfigAwsome) {
    configAwsome = yourConfigAwsome;
  }
}

/// ## input types like ( number , password or text )
enum InputTypes { number, password, text }

/// ## show text only , or text with widget
enum ShowWidgetTypes { text, icon, withScaffold, iconWithScaffold }
