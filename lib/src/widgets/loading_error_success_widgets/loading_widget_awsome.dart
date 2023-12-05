import 'package:flutter/material.dart';
import '../../config/config_awsome.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
    this.customLoading,
    this.showScaffold = false,
  });
  final bool showScaffold;
  final Widget? customLoading;
  @override
  Widget build(BuildContext context) {
    final widget = switch (showScaffold) {
      true => Scaffold(
          body: SizedBox(
            width: 20.0,
            height: 20.0,
            child: CircularProgressIndicator(
              strokeWidth: 1.0,
              color: configAwsome.appColors.primaryColor,
            ),
          ),
        ),
      _ => SizedBox(
          width: 20.0,
          height: 20.0,
          child: CircularProgressIndicator(
            strokeWidth: 1.0,
            color: configAwsome.appColors.primaryColor,
          ),
        ),
    };

    return customLoading ?? widget;
  }
}
