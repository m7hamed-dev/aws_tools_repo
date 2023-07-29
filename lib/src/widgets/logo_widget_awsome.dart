import 'package:flutter/material.dart';

class LogoWidgetAwsome extends StatelessWidget {
  const LogoWidgetAwsome({
    super.key,
    required this.path,
    this.width,
    this.height,
  });
  final String path;
  final double? width, height;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: width,
      height: height,
    );
  }
}
