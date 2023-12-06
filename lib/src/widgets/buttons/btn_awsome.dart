import 'package:flutter/material.dart';
import 'package:awsome_tools/awsome_tools.dart';

/// btn types
enum BtnTypes { state, normal, withCondition }

class BtnAwsome extends StatelessWidget {
  ///
  const BtnAwsome({
    Key? key,
    this.child,
    this.title = '',
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
    return Container(
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        border: borderColor == null ? null : Border.all(color: borderColor!),
        color: color ?? configAwsome.appColors.primaryColor,
        gradient: setGradientColor,
        borderRadius: configAwsome.defaultBorderRadius,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        clipBehavior: Clip.antiAlias,
        // style: ElevatedButton.styleFrom(
        visualDensity: VisualDensity.compact,
        padding: padding ?? EdgeInsets.all(configAwsome.defaultPadding),
        // backgroundColor: Colors.transparent,
        // shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: configAwsome.defaultBorderRadius,
          // ),
        ),
        child: child ??
            ButtonChild(
              title: title,
              btnType: btnType,
              textStyle: textStyle,
              textColor: textColor,
              state: state ?? InitalState(),
            ),
      ),
    );
  }

  Gradient? get setGradientColor {
    return color == null && gradient == null
        ? configAwsome.appColors.gradientAppColor
        : gradient;
  }
}

class ButtonChild extends StatelessWidget {
  const ButtonChild({
    super.key,
    required this.btnType,
    this.title = '',
    this.textStyle,
    this.width,
    this.height,
    this.textColor,
    required this.state,
  });

  ///
  final BtnTypes btnType;
  final String title;
  final TextStyle? textStyle;
  final Color? textColor;
  final BaseState state;
  final double? height, width;

  ///
  @override
  Widget build(BuildContext context) {
    if (btnType == BtnTypes.state) {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        alignment: Alignment.center,
        width: state is LoadingState ? 50 : context.width,
        curve: Curves.easeInOut,
        child: _buildChild,
      );
    }
    return TxtAwsome(
      title,
      style: textStyle ?? mediumStyle,
      color: textColor ?? Colors.white,
    );
  }

  Widget get _buildChild {
    if (state is LoadingState) {
      return const CircularProgressIndicator.adaptive(
        strokeWidth: 2.0,
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      );
    }
    return TxtAwsome(
      state is LoadingState ? '' : state.txtBaseState(''),
      style: textStyle ?? mediumStyle,
      color: Colors.white,
    );
  }
}
