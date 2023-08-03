import 'package:flutter/material.dart';
import '../../../awsome_tools.dart';

class LoadingWidgetAwsome extends StatelessWidget {
  const LoadingWidgetAwsome({
    super.key,
    this.child = const SizedBox(),
    required this.showWidgetType,
  });
  final Widget child;
  final ShowWidgetTypes showWidgetType;
  @override
  Widget build(BuildContext context) {
    if (child is SizedBox) {
      return const Center(
        child: SizedBox(
          width: 20.0,
          height: 20.0,
          child: CircularProgressIndicator(
            strokeWidth: 1.0,
            color: Colors.black,
          ),
        ),
      );
    }
    return child;
  }
}
