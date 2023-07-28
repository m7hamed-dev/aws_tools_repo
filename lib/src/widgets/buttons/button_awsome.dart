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
  }) : super(key: key);

  ///
  final Color? txtColor;
  final String? title;
  final Color? borderColor;
  final void Function()? onPressed;
  final Color? color;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;
  final double? elevation;
  final Widget? child;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
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
              style: regularStyle.copyWith(color: txtColor),
            ),
      ),
    );
  }
}
