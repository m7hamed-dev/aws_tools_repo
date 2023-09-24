import 'package:flutter/material.dart';
import 'package:awsome_tools/awsome_tools.dart';
import 'package:awsome_tools/src/widgets/snackbars/snack_bar_widget_awsome.dart';

extension SnackbarAwsome on BuildContext {
  /// # show Snackbar
  void showSnackbar(
    BaseState state, {
    Duration? duration,
    String? message,
    bool setOnTop = false,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBarWidgetAwsome.call(
        this,
        state: state,
        message: message,
        setOnTop: setOnTop,
        duration: duration ?? configAwsome.duration,
      ),
    );
  }
}
