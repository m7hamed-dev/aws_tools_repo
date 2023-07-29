import 'package:flutter/material.dart';
import '../../awsome_tools.dart';

late ConfigAwsome configAwsome;

class ConfigAwsome {
  /// # This for config
  const ConfigAwsome({
    this.fontFamily = '',
    this.defaultPadding = 10.0,
    this.buttonHeight,
    required this.appColors,
    this.defaultBorderRadius = const BorderRadius.all(Radius.circular(10)),
    required this.fontModel,
    required this.stringsAwsome,
    required this.appAssets,
    required this.messageType,
    this.duration = const Duration(seconds: 4),
  });

  /// ## some fields
  final String fontFamily;
  final double defaultPadding;
  final double? buttonHeight;
  final AppColors appColors;
  final BorderRadius defaultBorderRadius;
  final FontSizeModel fontModel;
  final StringsAwsome stringsAwsome;
  final AppAssets appAssets;
  final MessageTypes messageType;
  final Duration duration;

  /// inital configuration
  void init(ConfigAwsome yourConfigAwsome) {
    configAwsome = yourConfigAwsome;
  }
}

/// ## input types like ( number , password or text )
enum InputTypes { number, password, text }

/// ## show text only , or text with widget
/// ## or text with Scaffold
enum ShowWidgetTypes { text, icon, withScaffold, iconWithScaffold }
