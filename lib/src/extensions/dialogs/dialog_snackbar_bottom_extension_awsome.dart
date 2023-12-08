import 'dialog_ext_awsome.dart';
import 'package:flutter/material.dart';
import '../../config/config_awsome.dart';
import '../../network/base_state_awsome.dart';
import 'package:awsome_tools/src/widgets/dialogs/dialog_awsome.dart';
import 'package:awsome_tools/src/extensions/snackbar_ext_awsome.dart';
import 'package:awsome_tools/src/widgets/bottomsheet/bottom_widget_awsome.dart';

///! ## this extenstion for show dialog or snackBar or bottom
///! ## Base on [ MessageTypes => ( dialog or snackbar or bottom  ) ]
extension DialogSnackBarBottomExtensionAwsome on BuildContext {
  /// ## this extenstion for show dialog or snackbar or bottom
  /// ## Base on MessageTypes ( dialog or snackbar or bottom  )
  Future<void> show({
    BaseState? state,
    bool isLoadingDialog = false,
    InteractiveTypes? interactiveType,
    bool? useCutomDesign,
    String? message,
    String? title,
    Duration? duration,
  }) async {
    /// loading dialog
    if (isLoadingDialog) {
      await showDialog(
        context: this,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return const DialogLoadingBody();
        },
      );
    } else {
      //!
      final type = interactiveType ?? configAwsome.messageType;
      final state0 = state ?? InitalState();
      //!
      return switch (type) {
        //! Dialog
        InteractiveTypes.dialog => await showDialog(
            context: this,
            builder: (context) {
              return DialogBodyWidget(
                state: state0,
                message: message,
                useCutomDesignDialog:
                    useCutomDesign ?? configAwsome.useCutomDesignDialog,
              );
            },
          ),

        //! BottomSheet
        InteractiveTypes.bottomSheet => await showModalBottomSheet(
            context: this,
            builder: (context) => BottomSheetWidgetAwsome(
              state: state0,
              useCutomDesignDialog: useCutomDesign,
              message: message,
            ),
          ),

        //! showSnackbar
        _ => showSnackbar(
            state0,
            useCutomDesign: useCutomDesign,
            title: title ?? '',
            message: message ?? state?.msg ?? '',
            duration: duration,
          )
      };
    }
  }
}

/// ### MessageTypes == how can I display message for User UI
/// ### They are three Wayes ( dialog , bottom , snackBar )
enum InteractiveTypes { dialog, bottomSheet, snackBar }
