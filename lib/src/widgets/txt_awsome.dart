import 'package:flutter/material.dart';
import 'package:awsome_tools/src/extensions/ext_current_theme.dart';

class TxtAwsome extends StatelessWidget {
  const TxtAwsome(
    this.data, {
    super.key,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.color,
    this.fontSize,
  });

  ///
  final String data;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final Color? color;
  final double? fontSize;

  ///
  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkTheme;
    return Text(
      data,
      style: getStyle(isDark, style, fontSize: fontSize),
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
      locale: locale,
      textAlign: textAlign,
      textDirection: textDirection,
    );
  }

  TextStyle getStyle(
    bool isDark,
    TextStyle? style, {
    double? fontSize,
  }) {
    // ! Style is Equal Null
    if (style == null) {
      // use your Color
      if (color != null) {
        return TextStyle(color: color, fontSize: fontSize);
      }
      // use color base on System
      return TextStyle(
        fontSize: fontSize,
        color: isDark ? Colors.white : Colors.black,
      );
    }

    // ! Style is Not Equal Null
    // use your Color
    if (color != null) {
      return style.copyWith(color: color, fontSize: fontSize);
    }
    // use color base on System
    return style.copyWith(
      fontSize: fontSize,
      color: isDark ? Colors.white.withOpacity(.8) : Colors.black,
    );
  }
}
