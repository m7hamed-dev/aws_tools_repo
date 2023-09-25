import 'package:flutter/material.dart';
import 'package:awsome_tools/awsome_tools.dart';

/// # Shows a dialog if the string is empty.
extension StringExtension on String {
  /// # Shows a dialog if the string is empty.
  void showDialogIfEmpty(BuildContext context, String dialogMessage) {
    if (isEmpty) {
      context.show(EmptyState(noData: dialogMessage));
    }
  }
}
