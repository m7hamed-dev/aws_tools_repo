import 'package:flutter/material.dart';

class LoadingAwsomeWidget extends StatelessWidget {
  const LoadingAwsomeWidget({super.key, this.child = const SizedBox()});
  final Widget child;
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
