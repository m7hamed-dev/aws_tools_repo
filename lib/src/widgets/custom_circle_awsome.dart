import 'package:awsome_tools/src/config/config_awsome.dart';
import 'package:flutter/material.dart';

class CircleAwsome extends StatelessWidget {
  const CircleAwsome({
    Key? key,
    required this.child,
    this.color,
    this.padding,
    this.margin,
    this.setBorder = false,
  }) : super(key: key);

  ///
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool setBorder;

  ///
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? configAwsome.appColors.primaryColor,
        border: setBorder ? Border.all() : null,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(.11),
        //     spreadRadius: 10.0,
        //     blurRadius: 10.0,
        //   ),
        // ],
      ),
      child: child,
    );
  }
}
