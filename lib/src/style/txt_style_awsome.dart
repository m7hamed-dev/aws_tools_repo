import 'package:flutter/material.dart';
import 'package:awsome_tools/src/config/config_awsome.dart';

class TextStylesAwsome {
  ///
  TextStyle get maraiRegular {
    return TextStyle(
      fontFamily: configAwsome.fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: configAwsome.fontModel.regular,
    );
  }

  TextStyle get maraiMedium {
    return TextStyle(
      fontFamily: configAwsome.fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: configAwsome.fontModel.regular,
    );
  }

  TextStyle get maraiBold {
    return TextStyle(
      fontFamily: configAwsome.fontFamily,
      fontWeight: FontWeight.w700,
      fontSize: configAwsome.fontModel.bold,
    );
  }

  TextStyle get maraiBlack {
    return TextStyle(
      fontFamily: configAwsome.fontFamily,
      fontWeight: FontWeight.w900,
      fontSize: configAwsome.fontModel.extraBlack,
    );
  }

  ///
  TextStyle get maraiExtraBlack {
    return TextStyle(
      fontFamily: configAwsome.fontFamily,
      fontWeight: FontWeight.w900,
      fontSize: configAwsome.fontModel.extraBlack,
    );
  }
}
