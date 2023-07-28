import 'package:awsome_tools/awsome_tools.dart';
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
    late Color backgroundColor = Colors.blue;
    late IconData iconData;
    switch (state) {
      case LoadingState():
        message = 'Loading...';
        backgroundColor = Colors.blue;
        iconData = Icons.local_activity;
        break;
      case ErrorState():
        message = state.errorMessage;
        backgroundColor = Colors.red;
        iconData = Icons.error;
        break;
      case SuccessState():
        message = state.successMessage;
        backgroundColor = Colors.green;
        iconData = Icons.check;
        break;
    }
    //
    final snackbar = SnackBar(
      content: Row(
        children: [
          Icon(iconData, color: Colors.white),
          const SizedBox(width: 5.0),
          Text(
            message,
            style: regularStyle.copyWith(color: Colors.white),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      duration: duration,
      behavior: setOnTop ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
      margin: const EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: configAwsome.defaultBorderRadius,
      ),
    );

    ScaffoldMessenger.of(this).showSnackBar(snackbar);
  }
}
