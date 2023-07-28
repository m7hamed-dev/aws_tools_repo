import 'package:flutter/material.dart';

extension HexColorAwsome on String {
  /// # convert HecColor to Color
  Color get toColor {
    late String hexColor = this;
    if (startsWith('#')) {
      hexColor = hexColor.substring(1);
    }
    int colorValue = int.tryParse(hexColor, radix: 16) ?? 0xFFFFFFFF;
    if (hexColor.length == 6 || hexColor.length == 8) {
      colorValue |= 0xFF000000;
    }
    return Color(colorValue);
  }
}
