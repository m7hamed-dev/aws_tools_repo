import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

extension ColorBaseOnStarte on BaseApiState {
  Color get colorBaseOnStarte {
    return switch (this) {
      // const Color.fromARGB(255, 246, 237, 237),
      InitalState() => configAwsome.appColors.primaryColor,
      LoadingState() => configAwsome.appColors.primaryColor,
      ErrorApiState() => const Color.fromARGB(255, 167, 33, 23),
      NoDataState() => const Color.fromARGB(255, 167, 33, 23),
      WarningState() => const Color.fromARGB(255, 211, 141, 35),
      _ => const Color.fromARGB(255, 79, 196, 83)
    };
  }
}
