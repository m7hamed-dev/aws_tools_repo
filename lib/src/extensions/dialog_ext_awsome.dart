import 'package:awsome_tools/awsome_tools.dart';
import 'package:awsome_tools/src/widgets/dialogs/dialog_awsome.dart';
import 'package:flutter/material.dart';

extension DialogExtAwsome on BuildContext {
  void showDialogAwsome(StateAwsome state) => showDialog(
        context: this,
        builder: (context) => DialogWidgetAwsome(state: state),
      );
}
