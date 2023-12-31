import '../config/config_awsome.dart';
import 'package:flutter/material.dart';
import '../network/base_state_awsome.dart';

extension ColorBaseOnState on BaseState {
  /// ## color Base on State
  Color get colorBaseOnStarte {
    return switch (this) {
      // const Color.fromARGB(255, 246, 237, 237),
      InitalState() => configAwsome.appColors.primaryColor,
      LoadingState() => const Color.fromARGB(255, 21, 138, 233),
      ErrorState() => const Color.fromARGB(255, 167, 33, 23),
      EmptyState() => const Color.fromARGB(255, 21, 138, 233),
      WarningState() => const Color.fromARGB(255, 211, 141, 35),
      _ => const Color.fromARGB(255, 79, 196, 83)
    };
  }

  /// ## color Base on State Can Pass Paramter From Spacific Color
  Color colorBaseState({
    required Color successColor,
    Color? initColor,
    Color? loadingColor,
    Color? warningColor,
    Color? errorColor,
  }) =>
      switch (this) {
        InitalState() => initColor ?? configAwsome.appColors.primaryColor,
        LoadingState() => loadingColor ?? configAwsome.appColors.primaryColor,
        ErrorState() ||
        EmptyState() =>
          errorColor ?? const Color.fromARGB(255, 167, 33, 23),
        WarningState() =>
          warningColor ?? const Color.fromARGB(255, 211, 141, 35),
        _ => successColor
      };
}
