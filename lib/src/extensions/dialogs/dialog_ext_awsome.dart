import 'package:flutter/material.dart';
import 'package:awsome_tools/awsome_tools.dart';
import 'package:awsome_tools/src/widgets/dialogs/dialog_awsome.dart';

extension DialogExtension on BuildContext {
  ///# useAdaptiveDialog with new version of Flutter 3.13
  void showDialogAwsome({
    BaseState? state,
    bool useAdaptiveDialog = false,
    bool useCutomDesignDialog = true,
    bool isLoadingDialog = false,
    bool useAnimation = false,
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
        ),
      );
    } else {
      await showDialog(
        context: this,
        builder: (context) => DialogBodyWidget(
          state: state ?? InitalState(),
          useCutomDesignDialog: useCutomDesignDialog,
          useAnimation: useAnimation,
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
      elevation: 20.0,
      contentPadding: const EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: configAwsome.defaultBorderRadius,
      ),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const SizedBox(width: 10.0),
            CircularProgressIndicator(
              strokeWidth: 2.0,
              color: configAwsome.appColors.primaryColor,
            ),
            const SizedBox(width: 20.0),
            const TxtAwsome('من فضلك انتظر'),
          ],
        ),
      ),
    );
  }
}
