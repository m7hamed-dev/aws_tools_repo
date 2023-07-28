import 'package:awsome_tools/awsome_tools.dart';
import 'package:awsome_tools/src/extensions/color_base_on_state.dart';
import 'package:flutter/material.dart';

extension SnackbarAwsome on BuildContext {
  /// # show Snackbar
  void showSnackbar(
    StateAwsome state, {
    Duration duration = const Duration(seconds: 2),
    String message = '',
    bool setOnTop = false,
  }) {
    //
    late IconData iconData;
    switch (state) {
      case LoadingState():
        message = 'Loading...';
        iconData = Icons.local_activity;
        break;
      case ErrorState():
        message = state.errorMessage;
        iconData = Icons.error;
        break;
      case SuccessState():
        message = state.successMessage;
        iconData = Icons.check;
        break;
    }
    //
    final snackbar = SnackBar(
      content: Row(
        children: [
          Icon(iconData, color: Colors.white),
          const SizedBox(width: 10.0),
          Text(
            message,
            style: regularStyle.copyWith(color: Colors.white),
          ),
        ],
      ),
      backgroundColor: state.color,
      duration: duration,
      behavior: setOnTop ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
      shape: RoundedRectangleBorder(
        borderRadius: configAwsome.defaultBorderRadius,
      ),
    );

    ScaffoldMessenger.of(this).showSnackBar(snackbar);
  }
}
