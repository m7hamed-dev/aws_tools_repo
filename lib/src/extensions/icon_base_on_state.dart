import 'package:flutter/material.dart';
import '../network/base_state_awsome.dart';

const iconSize = 30.0;
const iconColor = Colors.white;

extension IconBaseOnState on BaseApiState {
  /// ## show icon Base on Current State
  Widget get iconBaseOnState {
    return switch (this) {
      /// inital , loading
      InitalState() => const SizedBox(),
      LoadingState() => const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),

      /// Error Cases
      ErrorState() => const Icon(Icons.error, size: iconSize, color: iconColor),
      WarningState() ||
      NoDataState() =>
        const Icon(Icons.warning, size: iconSize, color: iconColor),
      NetworkErrorState() =>
        const Icon(Icons.network_check_sharp, size: iconSize, color: iconColor),

      /// when success
      _ => const Icon(Icons.check_circle, size: iconSize, color: iconColor)
    };
  }
}
