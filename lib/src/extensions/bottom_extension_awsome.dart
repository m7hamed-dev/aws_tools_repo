import 'package:awsome_tools/src/widgets/bottomsheet/bottom_widget_awsome.dart';
import 'package:flutter/material.dart';

import '../network/base_state_awsome.dart';

extension BottomSheetExtensionAwsome on BuildContext {
  /// ## this extenstion TO show  bottom
  void showBottom(BaseApiState state) {
    showModalBottomSheet(
      context: this,
      builder: (context) => BottomWidgetAwsome(state: state),
    );
  }
}
