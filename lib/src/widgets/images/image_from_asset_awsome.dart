import 'package:flutter/material.dart';

///# get image from asset

class ImageFromAsset extends StatelessWidget {
  ///# get image from asset
  const ImageFromAsset({
    super.key,
    required this.path,
    this.color,
    this.width,
    this.height,
    this.fit,
    this.borderRadius,
  });
  final Color? color;
  final double? width, height;
  final String path;
  final double? borderRadius;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 0)),
      child: Image.asset(
        path,
        width: width,
        height: height,
        fit: fit,
        color: color,
      ),
    );
  }
}
