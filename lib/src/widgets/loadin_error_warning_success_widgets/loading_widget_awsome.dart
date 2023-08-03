import 'package:flutter/material.dart';

class LoadingWidgetAwsome extends StatelessWidget {
  const LoadingWidgetAwsome({
    super.key,
    this.customLoading,
    this.showScaffold = false,
  });
  final bool showScaffold;
  final Widget? customLoading;
  @override
  Widget build(BuildContext context) {
    if (customLoading == null && showScaffold) {
      return const Scaffold(
        body: SizedBox(
          width: 20.0,
          height: 20.0,
          child: CircularProgressIndicator(
            strokeWidth: 1.0,
            color: Colors.black,
          ),
        ),
      );
    }
    return customLoading ?? const SizedBox();
  }
}
