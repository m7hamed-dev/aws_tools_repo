import 'package:flutter/material.dart';
import 'package:awsome_tools/awsome_tools.dart';

class BtnConditionAws extends StatelessWidget {
  const BtnConditionAws({
    super.key,
    required this.title,
    required this.isButtonClickable,
    required this.onPressed,
    this.buttonColor,
    this.textColor,
    this.padding,
    this.minWidth,
  });
  final String title;
  final bool isButtonClickable;
  final void Function() onPressed;
  final Color? buttonColor, textColor;
  final EdgeInsets? padding;
  final double? minWidth;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: isButtonClickable ? onPressed : null,
      color: buttonColor ?? configAwsome.appColors.primaryColor,
      elevation: 0.0,
      disabledColor: setDisabledColor,
      textColor: textColor ?? Colors.white,
      visualDensity: VisualDensity.compact,
      minWidth: minWidth,
      disabledTextColor: Colors.white.withOpacity(.22),
      padding: padding ?? EdgeInsets.all(configAwsome.defaultPadding),
      shape: RoundedRectangleBorder(
        borderRadius: configAwsome.defaultBorderRadius,
      ),
      child: TxtAwsome(title),
    );
  }

  Color get setDisabledColor {
    return isButtonClickable ? Colors.white : Colors.grey.withOpacity(.6);
  }
}
