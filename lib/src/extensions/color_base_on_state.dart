import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

extension ColorBaseOnStarte on StateAwsome {
  Color get color {
    return switch (this) {
      InitalState() => Colors.white,
      LoadingState() => Colors.grey,
      ErrorState() => Colors.red,
      _ => configAwsome.appColors.primaryColor,
    };
  }
}
