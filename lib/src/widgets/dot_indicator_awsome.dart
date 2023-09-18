import 'package:flutter/material.dart';

class DotIndicatorAwsome extends StatelessWidget {
  const DotIndicatorAwsome({
    super.key,
    required this.itemCount,
    required this.currentIndex,
    this.width,
    this.height,
    this.selectedDotColor,
    this.unsSelectedDotColor,
    this.shape,
  });
  final int itemCount, currentIndex;
  final Color? selectedDotColor, unsSelectedDotColor;
  final BoxShape? shape;
  final double? width, height;
  @override
  Widget build(BuildContext context) {
    ///
    final varSelectedDotColor =
        selectedDotColor ?? Theme.of(context).primaryColor;
    final varUnSelectedDotColor = unsSelectedDotColor ?? Colors.grey;

    ///
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        itemCount,
        (index) => AnimatedContainer(
          width: width ?? 8.0,
          height: height ?? 8.0,
          duration: const Duration(milliseconds: 400),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: shape ?? BoxShape.circle,
            color: index == currentIndex
                ? varSelectedDotColor
                : varUnSelectedDotColor,
          ),
        ),
      ),
    );
  }
}
