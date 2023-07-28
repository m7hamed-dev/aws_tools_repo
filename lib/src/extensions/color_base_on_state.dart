import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

extension ColorBaseOnStarte on StateAwsome {
  Color get colorBaseOnStarte {
    return switch (this) {
      InitalState() => const Color.fromARGB(255, 246, 237, 237),
      LoadingState() => configAwsome.appColors.primaryColor,
      ErrorState() => const Color.fromARGB(255, 167, 33, 23),
      WarningState() => Colors.orange,
      _ => const Color.fromARGB(255, 79, 196, 83)
    };
  }
}
