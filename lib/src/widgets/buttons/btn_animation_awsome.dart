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
    this.height = 55.0,
    this.elevation,
    this.borderColor,
    this.txtColor,
    this.gradient,
    required this.state,
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
  final StateAwsome state;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        width: state is LoadingState ? 50 : 150,
        margin: margin,
        height: height,
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
    switch (state) {
      case InitalState():
        return TxtAwsome(
          title ?? state.message,
          style: mediumStyle.copyWith(color: Colors.white),
        );
      case LoadingState():
        return const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        );
      case ErrorState():
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            state.iconBaseOnState,
            const SizedBox(width: 5.0),
            TxtAwsome(
              state.message,
              style: mediumStyle.copyWith(color: Colors.white),
            ),
          ],
        );
      case NetworkErrorState():
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            state.iconBaseOnState,
            const SizedBox(width: 5.0),
            TxtAwsome(
              state.message,
              style: mediumStyle.copyWith(color: Colors.white),
            ),
          ],
        );
    }
    return state.iconBaseOnState;
  }
}
