import 'package:flutter/material.dart';
import '../network/base_state_awsome.dart';

const iconSize = 28.0;
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
      WarningState() => const Icon(
          Icons.warning,
          color: iconColor,
          size: iconSize,
        ),
      //
      ErrorState() => const Icon(
          Icons.error,
          color: iconColor,
          size: iconSize,
        ),
      //
      NetworkErrorState() => const Icon(
          Icons.network_check,
          color: iconColor,
          size: iconSize,
        ),
      //
      SuccesState() => const Icon(
          Icons.check_circle,
          color: iconColor,
          size: iconSize,
        ),

      /// when success
      _ => const Icon(
          Icons.check_circle,
          size: iconSize,
          color: iconColor,
        )
    };
  }

  /// ## show icon widget Base on Current State
  Widget iconColorBaseOnState({Color? color}) {
    return switch (this) {
      // intial , loading
      // InitalState() => const SizedBox(),
      //
      LoadingState() => const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      //
      WarningState() =>
        Icon(Icons.warning, color: color ?? iconColor, size: iconSize),
      //
      ErrorState() =>
        Icon(Icons.error, color: color ?? iconColor, size: iconSize),
      //
      NetworkErrorState() =>
        Icon(Icons.network_check, color: color ?? iconColor, size: iconSize),
      //
      SuccesState() =>
        Icon(Icons.check_circle, color: color ?? iconColor, size: iconSize),

      /// when success
      _ => Icon(Icons.check_circle, size: iconSize, color: color ?? iconColor)
    };
  }
}
