import '../txt_awsome.dart';
import 'package:flutter/material.dart';
import '../../config/config_awsome.dart';
import '../../style/txt_style_awsome.dart';
import '../../network/base_state_awsome.dart';
import 'package:awsome_tools/src/extensions/screen_size_ext.dart';
import 'package:awsome_tools/src/extensions/icon_base_on_state.dart';

/// btn types
enum BtnTypes { state, txtState, normal }

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
      // height: height ?? configAwsome.buttonHeight,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        border: borderColor == null ? null : Border.all(color: borderColor!),
        color: color ?? configAwsome.appColors.primaryColor,
        gradient: setGradientColor,
        // gradient: borderColor == null && color == null
        //     ? gradient
        //     : configAwsome.appColors.gradientAppColor,
        borderRadius: configAwsome.defaultBorderRadius,
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
            ButtonChild(
              btnType: btnType,
              title: title,
              textStyle: textStyle,
              state: state ?? InitalState(),
              textColor: textColor,
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
    this.title = 'title button',
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
        duration: const Duration(milliseconds: 300),
        width: state is LoadingState ? 50 : context.width,
        // height: height ?? configAwsome.buttonHeight,
        height: height,
        child: Center(child: _buildChild),
      );
    }

    ///
    if (btnType == BtnTypes.txtState) {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: state is LoadingState ? 50 : context.width,
        height: height,
        child: Center(child: _buildChild),
      );
    }

    /// normal button
    return TxtAwsome(
      title,
      style: textStyle ?? mediumStyle,
      color: textColor ?? Colors.white,
    );
  }

  Widget get _buildChild {
    return switch (state) {
      //
      InitalState() => TxtAwsome(
          title,
          style: textStyle ?? mediumStyle.copyWith(color: Colors.white),
        ),
      //
      LoadingState() => const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      // when success
      SuccesState() => TxtAwsome(
          state.msg ?? '',
          style: textStyle ?? mediumStyle.copyWith(color: Colors.white),
        ),

      /// error , warning , noData , NetworkError
      _ => Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            state.iconBaseOnState,
            const SizedBox(width: 5.0),
            TxtAwsome(
              state.msg ?? '',
              style: textStyle ?? mediumStyle.copyWith(color: Colors.white),
            ),
          ],
        ),
    };
  }
}
