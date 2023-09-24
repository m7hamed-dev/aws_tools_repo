import 'package:flutter/material.dart';
import 'package:awsome_tools/awsome_tools.dart';
import 'package:awsome_tools/src/widgets/dialogs/dialog_awsome.dart';
import 'package:awsome_tools/src/widgets/bottomsheet/bottom_widget_awsome.dart';

///! ### this extenstion for show dialog or snackBar or bottom
///! ### Base on [ MessageTypes => ( dialog or snackbar or bottom  ) ]
extension DialogSnackBarBottomExtensionAwsome on BuildContext {
  /// ## this extenstion for show dialog or snackbar or bottom
  /// ## Base on MessageTypes ( dialog or snackbar or bottom  )
  Future<void> show(
    BaseState state, {
    bool isLoadingDialog = false,
    InteractiveTypes? interactiveType,
  }) async {
    /// loading dialog
    if (isLoadingDialog) {
      await showDialog(
        context: this,
        // Prevent dismissing by tapping outside
        barrierDismissible: false,
        builder: (BuildContext context) {
          return const DialogLoadingBody();
        },
      );
    } else {
      final type = interactiveType ?? configAwsome.messageType;
      return switch (type) {
        /// Dialog
        DialogType() => await showDialog(
            context: this,
            builder: (context) => DialogBodyWidget(
              state: state,
            ),
          ),

        /// BottomSheet
        BottomType() => await showModalBottomSheet(
            context: this,
            builder: (context) => BottomWidgetAwsome(state: state),
          ),

        /// showSnackbar
        _ => showSnackbar(state)
      };
    }
  }
}

/// ### MessageTypes == how can I display message for User UI
/// ### They are three Wayes ( dialog , bottom , snackBar )
abstract class InteractiveTypes {}

class DialogType implements InteractiveTypes {}

class BottomType implements InteractiveTypes {}

class SnackBarType implements InteractiveTypes {}
