import 'package:flutter/material.dart';
import '../network/base_state_awsome.dart';

const iconSize = 30.0;
const iconColor = Colors.white;

extension IconBaseOnState on BaseApiState {
  /// ## show icon Base on Current State
  Widget get iconBaseOnState {
    return switch (this) {
      // intial , loading
      // InitalState() => const SizedBox(),
      //
      LoadingState() => const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      //
      WarningState() =>
        const Icon(Icons.warning, color: Colors.orange, size: iconSize),
      //
      ErrorState() =>
        const Icon(Icons.error, color: Colors.red, size: iconSize),
      //
      NetworkErrorState() => const Icon(Icons.network_check,
          color: Color.fromARGB(255, 203, 26, 13), size: iconSize),
      //
      SuccesState() => const Icon(Icons.check_circle,
          color: Color.fromARGB(255, 9, 171, 14), size: iconSize),

      /// when success
      _ => const Icon(Icons.check_circle, size: iconSize, color: iconColor)
    };
  }
}
