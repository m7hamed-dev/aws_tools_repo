import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

const iconSize = 30.0;

extension IconBaseOnState on StateAwsome {
  /// ### show icon Base on State Like
  /// ## [Init] and [Loading] or [Success] State
  Widget get iconBaseOnState {
    return switch (this) {
      LoadingState() => const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      ErrorState() => const Icon(
          Icons.error,
          size: iconSize,
          color: Colors.white,
        ),
      WarningState() => const Icon(
          Icons.warning,
          size: iconSize,
          color: Colors.white,
        ),
      NetworkErrorState() => const Icon(
          Icons.network_check_sharp,
          size: iconSize,
          color: Colors.white,
        ),
      _ => const Icon(Icons.check_circle, size: iconSize, color: Colors.white)
    };
  }
}
