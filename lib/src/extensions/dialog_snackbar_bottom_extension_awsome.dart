import 'package:awsome_tools/awsome_tools.dart';
import 'package:awsome_tools/src/widgets/bottomsheet/bottom_widget_awsome.dart';
import 'package:awsome_tools/src/widgets/dialogs/dialog_awsome.dart';
import 'package:flutter/material.dart';

///! ### this extenstion for show dialog or snackBar or bottom
///! ### Base on [ MessageTypes => ( dialog or snackbar or bottom  ) ]
extension DialogSnackBarBottomExtensionAwsome on BuildContext {
  /// ## this extenstion for show dialog or snackbar or bottom
  /// ## Base on MessageTypes ( dialog or snackbar or bottom  )
  void show(BaseApiState state) {
    if (configAwsome.messageType is DialogType) {
      // dialog
      showDialog(
        context: this,
        builder: (context) => DialogWidgetAwsome(state: state),
      );
    } else if (configAwsome.messageType is BottomType) {
      showModalBottomSheet(
        context: this,
        builder: (context) => BottomWidgetAwsome(state: state),
      );
    } else {
      showSnackbar(state);
    }
  }
}

/// ### MessageTypes == how can I display message for User UI
/// ### They are three Wayes ( dialog , bottom , snackBar )
abstract class MessageInteractiveTypes {}

class DialogType implements MessageInteractiveTypes {}

class BottomType implements MessageInteractiveTypes {}

class SnackBarType implements MessageInteractiveTypes {}
