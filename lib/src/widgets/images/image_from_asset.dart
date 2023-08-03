import 'package:flutter/material.dart';

class ImageFromAsset extends StatelessWidget {
  const ImageFromAsset({
    super.key,
    required this.path,
    this.color,
    this.width,
    this.height,
    this.fit,
  });
  final Color? color;
  final double? width, height;
  final String path;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: width,
      height: height,
      fit: fit,
      color: color,
    );
  }
}
