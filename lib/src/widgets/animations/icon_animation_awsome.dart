import 'package:awsome_tools/src/extensions/icon_base_on_state.dart';
import 'package:flutter/material.dart';

import '../../network/base_state_awsome.dart';

class IconAnimationAwsome extends StatelessWidget {
  const IconAnimationAwsome({
    super.key,
    required this.onPressed,
    this.color,
    required this.state,
  });

  final BaseApiState state;
  final void Function() onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: _buildIcon,
    );
  }

  Widget get _buildIcon {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      transitionBuilder: (child, animation) {
        return ScaleTransition(
          key: ValueKey<Widget>(child),
          scale: animation,
          child: child,
        );
      },
      child: state.iconBaseOnState,
    );
  }
}
