import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

const iconSize = 30.0;
// const iconColor = Colors.white;

/// ## show icon widget Base on Current State
extension IconBaseOnState on BaseState {
  /// ## show icon widget Base on Current State
  Widget get iconBaseOnState {
    return switch (this) {
      // intial , loading
      // InitalState() => const SizedBox(),
      //
      LoadingState() => CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(colorBaseOnStarte),
          // valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      //
      WarningState() => Icon(
          Icons.warning,
          color: colorBaseOnStarte,
          size: iconSize,
        ),
      //
      ErrorState() => Icon(
          Icons.error,
          color: colorBaseOnStarte,
          size: iconSize,
        ),
      //
      NetworkErrorState() => Icon(
          Icons.network_check,
          color: colorBaseOnStarte,
          size: iconSize,
        ),
      //
      SuccesState() => Icon(
          Icons.check_circle,
          color: colorBaseOnStarte,
          size: iconSize,
        ),

      /// when success
      _ => const Icon(
          Icons.check_circle,
          size: iconSize,
          color: Color.fromARGB(255, 6, 103, 9),
        )
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
          color: color,
          size: size ?? iconSize,
        ),
      //
      ErrorState() => Icon(
          Icons.close,
          color: color,
          size: size ?? iconSize,
        ),
      //
      NetworkErrorState() => Icon(
          Icons.network_check,
          color: color,
          size: size ?? iconSize,
        ),
      //
      SuccesState() => Icon(
          Icons.check_circle,
          color: color,
          size: size ?? iconSize,
        ),

      /// when success
      _ => Icon(
          Icons.check_circle,
          size: size ?? iconSize,
          color: color,
        )
    };
  }
}
