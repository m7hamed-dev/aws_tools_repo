import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

const iconSize = 30.0;

extension TxtBaseOnState on StateAwsome {
  /// ### show icon Base on State Like
  /// ## [Init] and [Loading] or [Success] State
  Widget get textBaseOnState {
    return switch (this) {
      LoadingState() => TxtAwsome(
          configAwsome.stringsAwsome.loading,
          style: mediumStyle.copyWith(color: Colors.white),
        ),
      ErrorState() => TxtAwsome(
          configAwsome.stringsAwsome.error,
          style: mediumStyle.copyWith(color: Colors.white),
        ),
      WarningState() => TxtAwsome(
          configAwsome.stringsAwsome.warning,
          style: mediumStyle.copyWith(color: Colors.white),
        ),
      NetworkErrorState() => TxtAwsome(
          configAwsome.stringsAwsome.networkError,
          style: mediumStyle.copyWith(color: Colors.white),
        ),
      _ => TxtAwsome(
          configAwsome.stringsAwsome.success,
          style: mediumStyle.copyWith(color: Colors.white),
        ),
    };
  }
}
