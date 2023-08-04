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
    this.boxShadow,
    this.onTap,
  });

  ///
  final Widget child;
  final double? width, height;
  final EdgeInsetsGeometry? margin, padding;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  final List<BoxShadow>? boxShadow;
  final void Function()? onTap;

  //
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
          border: border,
          boxShadow: boxShadow,
        ),
        child: child,
      ),
    );
  }
}
