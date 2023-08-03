import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.border,
    this.borderRadius,
    this.color,
  });
  final Widget child;
  final double? width, height;
  final EdgeInsetsGeometry? margin, padding;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  //
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
        border: border,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.07),
            spreadRadius: 10.0,
            blurRadius: 10.0,
          ),
        ],
      ),
      child: child,
    );
  }
}
