import 'package:flutter/material.dart';

import 'package:awsome_tools/src/config/config_awsome.dart';

class TextStyleAwsome {
  const TextStyleAwsome({required this.configAwsome});
  final ConfigAwsome configAwsome;

  ///
  TextStyle get maraiRegular => TextStyle(
        fontFamily: configAwsome.fontFamily,
        fontWeight: FontWeight.w400,
        fontSize: configAwsome.fontModel.regular,
      );

  TextStyle get maraiMedium => TextStyle(
        fontFamily: configAwsome.fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );

  TextStyle get maraiBold => TextStyle(
        fontFamily: configAwsome.fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: configAwsome.fontModel.bold,
      );

  TextStyle get maraiBlack => TextStyle(
        fontFamily: configAwsome.fontFamily,
        fontWeight: FontWeight.w900,
        fontSize: configAwsome.fontModel.extraBlack,
      );

  ///
  TextStyle get maraiExtraBlack => TextStyle(
        fontFamily: configAwsome.fontFamily,
        fontWeight: FontWeight.w900,
        fontSize: configAwsome.fontModel.extraBlack,
      );
}
