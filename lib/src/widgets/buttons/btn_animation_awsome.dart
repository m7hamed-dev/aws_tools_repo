import 'package:flutter/material.dart';
import '../../../awsome_tools.dart';
import '../../config/states_awsome.dart';

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
          color: _getButtonColor,
          borderRadius: configAwsome.defaultBorderRadius,
        ),
        child: _buildChild,
      ),
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

  Widget get _buildChild {
    switch (state) {
      case InitalState():
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TxtAwsome(
              title,
              style: configAwsome.textStyleAwsome.maraiMedium.copyWith(
                color: Colors.white,
              ),
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
              style: configAwsome.textStyleAwsome.maraiMedium.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        );
    }
    return const Icon(Icons.check, color: Colors.white);
  }
}
