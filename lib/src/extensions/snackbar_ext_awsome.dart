import 'package:flutter/material.dart';
import 'package:awsome_tools/src/network/base_state_awsome.dart';
import 'package:awsome_tools/src/widgets/snackbars/snack_bar_widget_awsome.dart';

extension SnackbarAwsome on BuildContext {
  /// # show Snackbar
  void showSnackbar(
    BaseState state, {
    Duration? duration,
    String title = '',
    String message = '',
    bool setOnTop = false,
    bool? useCutomDesign,
  }) {
    SnackBarWidgetAwsome.showSnackBar(
      this,
      state: state,
      title: title,
      message: message,
      setOnTop: setOnTop,
      duration: duration,
      useCutomDesign: useCutomDesign,
    );
  }
}
