import 'package:flutter/material.dart';
import 'package:awsome_tools/awsome_tools.dart';

//!# button types { state, normal, withCondition }
enum BtnTypes { state, normal, withCondition }

class BtnAwsome extends StatelessWidget {
  const BtnAwsome({
    Key? key,
    this.child,
    this.title = '',
    this.isClickable = false,
    this.onPressed,
    this.color,
    this.margin,
    this.padding,
    this.width,
    this.height,
    this.elevation,
    this.borderColor,
    this.textColor,
    this.gradient,
    this.textStyle,
    this.state,
    this.btnType = BtnTypes.normal,
  }) : super(key: key);

  final String title;
  final void Function()? onPressed;
  final bool isClickable;
  final BtnTypes btnType;
  final Color? borderColor, color, textColor;
  final EdgeInsetsGeometry? margin, padding;
  final double? width, height;
  final double? elevation;
  final Widget? child;
  final Gradient? gradient;
  final TextStyle? textStyle;
  final BaseState? state;

  @override
  Widget build(BuildContext context) {
    if (state is LoadingState) {
      return Container(
        width: width,
        height: height,
        margin: margin,
        padding: padding,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 231, 231, 231),
          borderRadius: configAwsome.defaultBorderRadius,
        ),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: CircularProgressIndicator(
            strokeWidth: 2.0,
            valueColor: AlwaysStoppedAnimation<Color>(
              Colors.white,
            ),
          ),
        ),
      );
    }

    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        border: borderColor == null ? null : Border.all(color: borderColor!),
        color: buttonColor(),
        gradient: setGradientColor,
        borderRadius: configAwsome.defaultBorderRadius,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        // isClickable && btnType == BtnTypes.withCondition ? onPressed : null,
        disabledColor: disabledColor(),
        clipBehavior: Clip.antiAlias,
        elevation: 0.0,
        visualDensity: VisualDensity.compact,
        padding: padding ?? EdgeInsets.all(configAwsome.defaultPadding),
        shape: RoundedRectangleBorder(
          borderRadius: configAwsome.defaultBorderRadius,
        ),
        child: child ??
            TxtAwsome(
              title,
              style: textStyle ?? mediumStyle,
              color: textColor ?? Colors.white,
            ),
      ),
    );
  }

  Color? disabledColor() {
    return btnType == BtnTypes.withCondition
        ? const Color.fromARGB(255, 207, 207, 207)
        : null;
  }

  Color buttonColor() {
    return color == null && gradient == null
        ? configAwsome.appColors.primaryColor
        : color ?? Colors.blue;
  }

  Gradient? get setGradientColor {
    return color == null && gradient == null
        ? configAwsome.appColors.gradientAppColor
        : gradient;
  }
}
