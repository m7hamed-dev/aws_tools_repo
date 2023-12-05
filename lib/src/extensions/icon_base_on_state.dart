import 'package:flutter/material.dart';
import '../network/base_state_awsome.dart';

const iconSize = 30.0;
const iconColor = Colors.white;

/// ## show icon widget Base on Current State
extension IconBaseOnState on BaseState {
  /// ## show icon widget Base on Current State
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
        const Icon(Icons.warning, color: iconColor, size: iconSize),
      //
      ErrorState() => const Icon(Icons.error, color: iconColor, size: iconSize),
      //
      NetworkErrorState() =>
        const Icon(Icons.network_check, color: iconColor, size: iconSize),
      //
      SuccesState() =>
        const Icon(Icons.check_circle, color: iconColor, size: iconSize),

      /// when success
      _ => const Icon(Icons.check_circle, size: iconSize, color: iconColor)
    };
  }

  /// ## show icon widget Base on Current State
  Widget iconColorBaseOnState({Color? color, double? size}) {
    return switch (this) {
      // intial , loading
      // InitalState() => const SizedBox(),
      //
      LoadingState() => CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(color ?? Colors.white),
        ),
      //
      WarningState() => Icon(
          Icons.error,
          color: color ?? iconColor,
          size: size ?? iconSize,
        ),
      //
      ErrorState() => Icon(
          Icons.close,
          color: color ?? iconColor,
          size: size ?? iconSize,
        ),
      //
      NetworkErrorState() => Icon(
          Icons.network_check,
          color: color ?? iconColor,
          size: size ?? iconSize,
        ),
      //
      SuccesState() => Icon(
          Icons.check_circle,
          color: color ?? iconColor,
          size: size ?? iconSize,
        ),

      /// when success
      _ => Icon(
          Icons.check_circle,
          size: size ?? iconSize,
          color: color ?? iconColor,
        )
    };
  }
}
