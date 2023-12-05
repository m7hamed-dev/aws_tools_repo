import 'package:flutter/material.dart';

extension CircleWidgetAwsomExtension on Widget {
  Widget withCircle({
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    Color? color,
  }) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: this,
    );
  }
}
