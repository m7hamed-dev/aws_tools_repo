import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

class BtnAwsome extends StatelessWidget {
  /// # button
  const BtnAwsome({
    Key? key,
    this.onPressed,
    this.child,
    this.title,
    this.color,
    this.margin,
    this.padding,
    this.width,
    this.elevation,
    this.height,
    this.borderColor,
    this.txtColor,
    this.gradient,
    this.style,
  }) : super(key: key);

  ///
  final String? title;
  final Color? txtColor, borderColor, color;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? margin, padding;
  final double? width, height;
  final double? elevation;
  final Widget? child;
  final Gradient? gradient;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? configAwsome.buttonHeight,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        border: borderColor == null ? null : Border.all(color: borderColor!),
        gradient: borderColor == null && color == null ? gradient : null,
        borderRadius: configAwsome.defaultBorderRadius,
        color: color,
        // boxShadow: [
        //   BoxShadow(
        //     color: color != null
        //         ? color!.withOpacity(.11)
        //         : AppColors.primaryColor.withOpacity(.11),
        //     blurRadius: 8.0,
        //     spreadRadius: 8.0,
        //   ),
        // ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        clipBehavior: Clip.antiAlias,
        style: ElevatedButton.styleFrom(
          visualDensity: VisualDensity.compact,
          padding: const EdgeInsets.all(18.0),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: configAwsome.defaultBorderRadius,
          ),
        ),
        child: child ??
            TxtAwsome(
              title ?? '',
              style: style ?? regularStyle.copyWith(color: txtColor),
            ),
      ),
    );
  }
}