import 'package:awsome_tools/awsome_tools.dart';
import 'package:awsome_tools/src/extensions/color_base_on_state.dart';
import 'package:awsome_tools/src/extensions/icon_base_on_state.dart';
import 'package:flutter/material.dart';

class SnackBarWidgetAwsome extends StatelessWidget {
  const SnackBarWidgetAwsome({
    super.key,
    required this.state,
    this.message,
    this.duration = const Duration(seconds: 4),
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
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -40.0,
            right: -40,
            child: Container(
              height: 55.0,
              width: 55.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(.22),
              ),
            ),
          ),
          Row(
            children: [
              state.iconBaseOnState,
              const SizedBox(width: 10.0),
              TxtAwsome(
                state.message,
                style: regularStyle.copyWith(color: Colors.white),
              ),
            ],
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
