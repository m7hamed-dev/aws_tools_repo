import 'package:awsome_tools/src/extensions/color_base_on_state.dart';
import 'package:flutter/material.dart';
import '../../../awsome_tools.dart';

class BtnAnimationAwsome extends StatelessWidget {
  ///
  const BtnAnimationAwsome({
    super.key,
    required this.onPressed,
    this.color,
    required this.state,
    required this.title,
  });

  final StateAwsome state;
  final Function() onPressed;
  final Color? color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        width: state is LoadingState ? 50 : 150,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: state.color,
          borderRadius: configAwsome.defaultBorderRadius,
        ),
        child: _buildChild,
      ),
    );
  }

  Widget get _buildChild {
    switch (state) {
      case InitalState():
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TxtAwsome(
              title,
              style: mediumStyle.copyWith(color: Colors.white),
            ),
          ],
        );
      case LoadingState():
        return const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        );
      case ErrorState():
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error, color: Colors.white),
            const SizedBox(width: 5.0),
            TxtAwsome(
              title,
              style: mediumStyle.copyWith(color: Colors.white),
            ),
          ],
        );
    }
    return const Icon(Icons.check, color: Colors.white);
  }
}
