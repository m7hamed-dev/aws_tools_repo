import 'package:awsome_tools/src/widgets/dialogs/dialog_awsome.dart';
import 'package:flutter/material.dart';

extension DialogExtAwsome on BuildContext {
  void showDialogAwsome() => showDialog(
        context: this,
        builder: (context) => const DialogAwsome(),
      );
}
