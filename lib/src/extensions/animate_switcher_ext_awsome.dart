import 'package:flutter/material.dart';

/// ## Set Animation Switcher
extension SetAnimationSwitcher on Widget {
  /// ## Set Animation Switcher
  Widget animateSwitcher({Duration? duration}) {
    return AnimatedSwitcher(
      duration: duration ?? const Duration(milliseconds: 400),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          key: UniqueKey(),
          opacity: animation,
          child: child,
        );
      },
      child: this,
    );
  }
}
