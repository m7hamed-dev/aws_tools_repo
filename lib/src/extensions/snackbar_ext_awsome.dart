import 'package:awsome_tools/awsome_tools.dart';
import 'package:awsome_tools/src/extensions/color_base_on_state.dart';
import 'package:awsome_tools/src/extensions/icon_base_on_state.dart';
import 'package:flutter/material.dart';

extension SnackbarAwsome on BuildContext {
  /// # show Snackbar
  void showSnackbar(
    StateAwsome state, {
    Duration duration = const Duration(seconds: 2),
    String? message,
    bool setOnTop = false,
  }) {
    //
    final snackbar = SnackBar(
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            children: [
              state.iconBaseOnState,
              const SizedBox(width: 10.0),
              Container(
                height: 55.0,
                width: 10.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10.0),
              TxtAwsome(
                state.message,
                style: regularStyle.copyWith(color: Colors.white),
              ),
            ],
          ),
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
        ],
      ),
      backgroundColor: state.colorBaseOnStarte,
      duration: duration,
      behavior: setOnTop ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
      shape: RoundedRectangleBorder(
        borderRadius: configAwsome.defaultBorderRadius,
      ),
    );

    ScaffoldMessenger.of(this).showSnackBar(snackbar);
  }
}
