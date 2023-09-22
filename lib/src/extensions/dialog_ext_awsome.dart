import 'package:awsome_tools/src/widgets/dialogs/dialog_awsome.dart';
import 'package:flutter/material.dart';
import '../network/base_state_awsome.dart';

extension DialogExtension on BuildContext {
  ///# useAdaptiveDialog with new version of Flutter 3.13
  void showDialogAwsome(
    BaseApiState state, {
    bool useAdaptiveDialog = false,
    bool useCutomDesignDialog = true,
  }) async {
    ///# show dialog base on Platform Like (IOS , Android) with Design Behavior
    if (useAdaptiveDialog) {
      await showAdaptiveDialog(
        context: this,
        builder: (context) => DialogBodyWidget(
          state: state,
          useCutomDesignDialog: useCutomDesignDialog,
        ),
      );
    } else {
      await showDialog(
        context: this,
        builder: (context) => DialogBodyWidget(
          state: state,
          useCutomDesignDialog: useCutomDesignDialog,
        ),
      );
    }
  }
}
