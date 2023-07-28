import 'package:flutter/material.dart';

extension HexColorAwsome on String {
  Color get toColor {
    String hexColor = this;
    if (hexColor.startsWith('#')) {
      hexColor = hexColor.substring(1);
    }
    int colorValue = int.tryParse(hexColor, radix: 16) ?? 0xFFFFFFFF;
    if (hexColor.length == 6 || hexColor.length == 8) {
      colorValue |= 0xFF000000;
    }
    return Color(colorValue);
  }
}
