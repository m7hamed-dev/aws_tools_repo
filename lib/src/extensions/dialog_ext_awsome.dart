import 'package:awsome_tools/src/widgets/dialogs/dialog_awsome.dart';
import 'package:flutter/material.dart';

import '../network/base_state_awsome.dart';

extension DialogExtAwsome on BuildContext {
  void showDialogAwsome(BaseApiState state) => showDialog(
        context: this,
        builder: (context) => DialogWidgetAwsome(state: state),
      );
}
