import 'package:flutter/material.dart';
import '../network/base_state_awsome.dart';

const iconSize = 30.0;
const iconColor = Colors.white;

extension IconBaseOnState on BaseApiState {
  /// ## show icon Base on State Like Inital and Loading or Success State
  Widget get iconBaseOnState {
    return switch (this) {
      InitalState() => const SizedBox(),
      LoadingState() => const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      ErrorState() => const Icon(Icons.error, size: iconSize, color: iconColor),
      WarningState() ||
      NoDataState() =>
        const Icon(Icons.warning, size: iconSize, color: iconColor),
      NetworkErrorState() =>
        const Icon(Icons.network_check_sharp, size: iconSize, color: iconColor),
      // when success
      _ => const Icon(Icons.check_circle, size: iconSize, color: iconColor)
    };
  }
}
