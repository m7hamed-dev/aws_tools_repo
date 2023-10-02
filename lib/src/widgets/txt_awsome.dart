import 'package:flutter/material.dart';

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

  ///
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: style,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
      locale: locale,
      textAlign: textAlign,
      textDirection: textDirection,
    );
  }
}
