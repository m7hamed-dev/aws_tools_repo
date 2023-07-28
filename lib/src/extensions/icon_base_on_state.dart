import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

extension IconBaseOnState on StateAwsome {
  Widget get iconBaseOnState {
    return switch (this) {
      LoadingState() => const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      ErrorState() => const Icon(Icons.error, size: 48, color: Colors.white),
      NetworkErrorState() =>
        const Icon(Icons.network_check_sharp, size: 48, color: Colors.white),
      _ => const Icon(Icons.check_circle, size: 48, color: Colors.white)
    };
  }
}
