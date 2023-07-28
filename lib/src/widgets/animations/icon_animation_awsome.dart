import 'package:flutter/material.dart';
import '../../../awsome_tools.dart';

class IconAnimationAwsome extends StatelessWidget {
  const IconAnimationAwsome({
    super.key,
    required this.onPressed,
    this.color,
    required this.state,
  });

  final StateAwsome state;
  final void Function() onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: _buildIcon(_buildChild),
    );
  }

  Widget get _buildChild {
    return switch (state) {
      InitalState() => const SizedBox(),
      LoadingState() => const CircularProgressIndicator(),
      ErrorState() => const Icon(Icons.error),
      NetworkErrorState() => const Icon(Icons.network_check_rounded),
      _ => const Icon(Icons.check),
    };
  }

  Widget _buildIcon(Widget child) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      transitionBuilder: (child, animation) {
        return ScaleTransition(
          key: ValueKey<Widget>(child),
          scale: animation,
          child: child,
        );
      },
      child: _buildChild,
    );
  }
}
