import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

extension SnackbarAwsome on BuildContext {
  /// # show Snackbar
  void showSnackbar(
    StateAwsome state, {
    Duration duration = const Duration(seconds: 2),
    String message = 'Loading...',
  }) {
    //
    late Color backgroundColor = Colors.blue;
    switch (state) {
      case LoadingState():
        message = 'Loading...';
        backgroundColor = Colors.blue;
        break;
      case ErrorState():
        message = state.errorMessage;
        backgroundColor = Colors.red;
        break;
      case SuccessState():
        message = state.successMessage;
        backgroundColor = Colors.green;
        break;
    }
    //
    final snackbar = SnackBar(
      content: Text(message, style: regularStyle.copyWith(color: Colors.white)),
      backgroundColor: backgroundColor,
      duration: duration,
    );

    ScaffoldMessenger.of(this).showSnackBar(snackbar);
  }
}
