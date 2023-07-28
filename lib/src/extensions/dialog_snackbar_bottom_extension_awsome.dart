import 'package:awsome_tools/awsome_tools.dart';
import 'package:awsome_tools/src/widgets/bottomsheet/bottom_widget_awsome.dart';
import 'package:awsome_tools/src/widgets/dialogs/dialog_awsome.dart';
import 'package:flutter/material.dart';

/// ## this extenstion for show dialog or snackBar or bottom
/// ## Base on [ MessageTypes => ( dialog or snackbar or bottom  ) ]
extension DialogSnackBarBottomExtensionAwsome on BuildContext {
  /// ## this extenstion for show dialog or snackbar or bottom
  /// ## Base on MessageTypes ( dialog or snackbar or bottom  )
  void show(StateAwsome state) {
    return switch (configAwsome.messageType) {
      // dialog
      DialogType() => showDialog(
          context: this,
          builder: (context) => DialogWidgetAwsome(state: state),
        ),
      // bottomsheet
      BottomType() => showBottomSheet(
          context: this,
          builder: (context) => BottomWidgetAwsome(state: state),
        ),
      // snackBar
      _ => showSnackbar(state),
    };
  }
}

/// # MessageTypes == how can I display message for User UI
/// # They are three Wayes ( dialog , bottom , snackBar )
abstract class MessageTypes {}

class DialogType implements MessageTypes {}

class BottomType implements MessageTypes {}

class SnackBarType implements MessageTypes {}
