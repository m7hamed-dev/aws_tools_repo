import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

extension ColorBaseOnStarte on StateAwsome {
  Color get color {
    return switch (this) {
      InitalState() => const Color.fromARGB(255, 239, 232, 232),
      LoadingState() => const Color.fromARGB(255, 16, 115, 197),
      ErrorState() => const Color.fromARGB(255, 174, 55, 47),
      _ => configAwsome.appColors.primaryColor,
    };
  }
}
