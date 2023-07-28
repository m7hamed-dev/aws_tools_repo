import 'package:awsome_tools/awsome_tools.dart';
import 'package:awsome_tools/src/extensions/color_base_on_state.dart';
import 'package:awsome_tools/src/extensions/icon_base_on_state.dart';
import 'package:flutter/material.dart';

class SnackBarWidgetAwsome extends StatelessWidget {
  const SnackBarWidgetAwsome({
    super.key,
    required this.state,
    this.message,
    this.duration = const Duration(seconds: 2),
    this.setOnTop = false,
  });
  //
  final bool setOnTop;
  final StateAwsome state;
  final String? message;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Row(
        children: [
          state.iconBaseOnState,
          const SizedBox(width: 10.0),
          Text(
            message ?? state.message,
            style: regularStyle.copyWith(color: Colors.white),
          ),
        ],
      ),
      backgroundColor: state.colorBaseOnStarte,
      duration: duration,
      behavior: setOnTop ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
      shape: RoundedRectangleBorder(
        borderRadius: configAwsome.defaultBorderRadius,
      ),
    );
  }
}
