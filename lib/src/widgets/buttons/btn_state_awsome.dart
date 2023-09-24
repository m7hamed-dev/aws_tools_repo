import '../../../awsome_tools.dart';
import 'package:flutter/material.dart';
import 'package:awsome_tools/src/extensions/icon_base_on_state.dart';

class BtnStateAwsome extends StatelessWidget {
  const BtnStateAwsome({
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
    this.successTitle,
    this.showIcon = true,
    required this.state,
  }) : super(key: key);

  final String? title, successTitle;
  final Color? txtColor, borderColor, color;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? margin, padding;
  final double? width, height;
  final double? elevation;
  final Widget? child;
  final Gradient? gradient;
  final TextStyle? style;
  final BaseApiState state;
  final bool showIcon;

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
        child: child ??
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: state is LoadingState ? 50 : context.width,
              height: height ?? configAwsome.buttonHeight,
              child: Center(child: _buildChild),
            ),
      ),
    );
  }

  Widget get _buildChild {
    /// hide Icon
    if (showIcon == false) {
      if (successTitle != null) {
        return TxtAwsome(
          successTitle ?? '',
          style: style ?? mediumStyle.copyWith(color: Colors.white),
        );
      }
      return TxtAwsome(
        state.message ?? '',
        style: style ?? mediumStyle.copyWith(color: Colors.white),
      );
    }
    return switch (state) {
      //
      InitalState() => TxtAwsome(
          title ?? '',
          style: style ?? mediumStyle.copyWith(color: Colors.white),
        ),
      //
      LoadingState() => const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      // when success
      SuccesState() => successTitle != null
          ? TxtAwsome(
              successTitle ?? '',
              style: style ?? mediumStyle.copyWith(color: Colors.white),
            )
          : TxtAwsome(
              state.message ?? '',
              style: style ?? mediumStyle.copyWith(color: Colors.white),
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
              style: style ?? mediumStyle.copyWith(color: Colors.white),
            ),
          ],
        ),
    };
  }
}
