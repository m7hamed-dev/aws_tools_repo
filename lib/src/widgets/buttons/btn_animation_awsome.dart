import 'package:awsome_tools/src/extensions/icon_base_on_state.dart';
import 'package:flutter/material.dart';
import '../../../awsome_tools.dart';

class BtnAnimationAwsome extends StatelessWidget {
  const BtnAnimationAwsome({
    Key? key,
    this.onPressed,
    this.child,
    this.title,
    this.color,
    this.margin,
    this.padding,
    this.width,
    this.height,
    this.elevation,
    this.borderColor,
    this.txtColor,
    this.gradient,
    this.style,
    required this.state,
  }) : super(key: key);

  final String? title;
  final Color? txtColor, borderColor, color;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? margin, padding;
  final double? width, height;
  final double? elevation;
  final Widget? child;
  final Gradient? gradient;
  final TextStyle? style;
  final BaseApiState state;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: state is LoadingState ? 50 : 150,
        margin: margin,
        height: height ?? configAwsome.buttonHeight,
        padding: padding,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: borderColor == null ? null : Border.all(color: borderColor!),
          gradient: borderColor == null && color == null ? gradient : null,
          borderRadius: configAwsome.defaultBorderRadius,
          color: color ?? configAwsome.appColors.primaryColor,
        ),
        child: _buildChild,
      ),
    );
  }

  Widget get _buildChild {
    return switch (state) {
      InitalState() => TxtAwsome(
          title ?? state.message,
          style: style ?? mediumStyle.copyWith(color: Colors.white),
        ),
      //
      LoadingState() => const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      //
      ErrorState() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            state.iconBaseOnState,
            const SizedBox(width: 5.0),
            TxtAwsome(
              state.message,
              style: style ?? mediumStyle.copyWith(color: Colors.white),
            ),
          ],
        ),
      //
      WarningState() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            state.iconBaseOnState,
            const SizedBox(width: 5.0),
            TxtAwsome(
              state.message,
              style: style ?? mediumStyle.copyWith(color: Colors.white),
            ),
          ],
        ),
      //
      NetworkErrorState() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            state.iconBaseOnState,
            const SizedBox(width: 5.0),
            TxtAwsome(
              state.message,
              style: style ?? mediumStyle.copyWith(color: Colors.white),
            ),
          ],
        ),
      //
      _ => state.iconBaseOnState
    };
  }
}
