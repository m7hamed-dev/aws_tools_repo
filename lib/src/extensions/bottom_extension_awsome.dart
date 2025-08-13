import 'package:flutter/material.dart';
import 'package:awsome_tools/src/network/base_state_awsome.dart';
import 'package:awsome_tools/src/widgets/bottomsheet/bottom_widget_awsome.dart';

extension BottomSheetExtensionAwsome on BuildContext {
  /// ## this extenstion TO show  bottom
  void showBottom(BaseState state) async {
    await showModalBottomSheet(
      context: this,
      builder: (context) => BottomSheetWidgetAwsome(state: state),
    );
  }
}
