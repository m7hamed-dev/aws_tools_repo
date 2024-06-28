import 'package:flutter/material.dart';
import '../../config/config_awsome.dart';
import '../../network/base_state_awsome.dart';
import 'package:awsome_tools/src/widgets/dialogs/dialog_awsome.dart';

extension DialogExtension on BuildContext {
  ///# useAdaptiveDialog with new version of Flutter 3.13
  void showDialogAwsome({
    final BaseState? state,
    final String? message,
    final bool useAdaptiveDialog = false,
    final bool useCutomDesignDialog = true,
    final bool isLoadingDialog = false,
    final bool useAnimation = false,
  }) async {
    /// # show loading
    if (isLoadingDialog) {
      await showDialog(
        context: this,
        // Prevent dismissing by tapping outside
        barrierDismissible: false,
        builder: (BuildContext context) {
          return const DialogLoadingBody();
        },
      );
    }

    ///# show dialog base on Platform Like (IOS , Android) with Design Behavior
    else if (useAdaptiveDialog) {
      await showAdaptiveDialog(
        context: this,
        builder: (context) => DialogBodyWidget(
          state: state ?? InitalState(),
          useCutomDesignDialog: useCutomDesignDialog,
          useAnimation: useAnimation,
          message: message,
        ),
      );
    } else {
      await showDialog(
        context: this,
        builder: (context) => DialogBodyWidget(
          state: state ?? InitalState(),
          useCutomDesignDialog: useCutomDesignDialog,
          useAnimation: useAnimation,
          message: message,
        ),
      );
    }
  }
}

class DialogLoadingBody extends StatelessWidget {
  const DialogLoadingBody({super.key});
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      elevation: 10.0,
      contentPadding: const EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: configAwsome.defaultBorderRadius,
      ),
      content: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            padding: const EdgeInsets.all(2.0),
            child: CircularProgressIndicator(
              strokeWidth: 4.0,
              color: configAwsome.appColors.primaryColor,
            ),
          ),
          const SizedBox(width: 20.0),
          const Text('من فضلك انتظر ...'),
        ],
      ),
    );
  }
}
