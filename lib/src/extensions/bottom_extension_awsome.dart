import 'package:awsome_tools/awsome_tools.dart';
import 'package:awsome_tools/src/widgets/bottomsheet/bottom_widget_awsome.dart';
import 'package:flutter/material.dart';

extension BottomSheetExtensionAwsome on BuildContext {
  /// ## this extenstion TO show  bottom
  void showBottom(StateAwsome state) {
    showBottomSheet(
      context: this,
      builder: (context) => BottomWidgetAwsome(state: state),
    );
  }
}
