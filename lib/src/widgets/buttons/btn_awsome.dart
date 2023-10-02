import '../../../awsome_tools.dart';
import 'package:flutter/material.dart';
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
    // this.txtColor,
    this.gradient,
    this.textStyle,
    this.state,
    this.btnType = BtnTypes.normal,
  }) : super(key: key);

  final String title;
  final void Function()? onPressed;
  final BtnTypes btnType;
  final Color? borderColor, color;
  final EdgeInsetsGeometry? margin, padding;
  final double? width, height;
  final double? elevation;
  final Widget? child;
  final Gradient? gradient;
  final TextStyle? textStyle;
  final BaseState? state;
  // final Color? txtColor, borderColor, color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? configAwsome.buttonHeight,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        border: borderColor == null ? null : Border.all(color: borderColor!),
        gradient: borderColor == null && color == null
            ? gradient
            : configAwsome.appColors.gradientAppColor,
        borderRadius: configAwsome.defaultBorderRadius,
        color: color ?? configAwsome.appColors.primaryColor,
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
        child: ChildBody(
          btnType: btnType,
          title: title,
          textStyle: textStyle,
          state: state ?? InitalState(),
        ),
      ),
    );
  }
}

class ChildBody extends StatelessWidget {
  const ChildBody({
    super.key,
    required this.btnType,
    this.title = 'title button',
    this.textStyle,
    this.width,
    this.height,
    required this.state,
  });

  ///
  final BtnTypes btnType;
  final String title;
  final TextStyle? textStyle;
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
      style: textStyle ?? mediumStyle.copyWith(color: Colors.white),
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
          state.message ?? '',
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
              state.message ?? '',
              style: textStyle ?? mediumStyle.copyWith(color: Colors.white),
            ),
          ],
        ),
    };
  }
}

class TxtState extends StatelessWidget {
  const TxtState({
    super.key,
    required this.state,
    required this.title,
    this.textStyle,
    this.succesTitle,
  });

  ///
  final String? succesTitle;
  final String title;
  final BaseState state;
  final TextStyle? textStyle;

  ///
  @override
  Widget build(BuildContext context) {
    return TxtAwsome(
      state.getTxt(
        intialTitle: title,
        succesTitle: succesTitle ?? configAwsome.stringsAwsome.success,
      ),
      style: textStyle ?? mediumStyle.copyWith(color: Colors.white),
    );
  }
}
