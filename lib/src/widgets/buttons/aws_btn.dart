import 'package:awsome_tools/src/widgets/awsme_txt.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class Btn extends StatelessWidget {
  /// # button
  const Btn({
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      // margin: margin ?? PaddingMarginConstant.marginFromHorizontal,
      decoration: BoxDecoration(
        border: borderColor == null ? null : Border.all(color: borderColor!),
        // gradient: borderColor == null ? _primaryGradient : null,
        borderRadius: defaultBorderRadius,
        color: Colors.white,
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
          shape: const RoundedRectangleBorder(
            borderRadius: defaultBorderRadius,
          ),
        ),
        child: TxtAwsome(data: title ?? ''),
      ),
    );
  }
}
