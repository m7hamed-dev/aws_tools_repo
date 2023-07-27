import 'package:flutter/material.dart';
import '../../../awsome_tools.dart';

class AnimatedIconState extends StatelessWidget {
  const AnimatedIconState({
    super.key,
    required this.onPressed,
    this.color,
    required this.state,
  });

  final StateAwsome state;
  final Function() onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: _buildIcon(_buildChild, _getButtonColor),
    );
  }

  Color get _getButtonColor {
    return switch (state) {
      LoadingState() => Colors.grey,
      InitalState() => color ?? configAwsome.appColors.primaryColor,
      ErrorState() => Colors.red,
      _ => configAwsome.appColors.primaryColor,
    };
  }

  IconData get _buildChild {
    return switch (state) {
      LoadingState() => Icons.import_contacts_rounded,
      InitalState() => Icons.refresh,
      ErrorState() => Icons.error,
      _ => Icons.check,
    };
  }

  Widget _buildIcon(IconData icon, Color color) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      transitionBuilder: (child, animation) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
      child: Icon(icon, key: ValueKey<IconData>(icon), color: color),
    );
  }
}
