import 'package:flutter/material.dart';
import 'package:awsome_tools/src/config/config_awsome.dart';

class ImagePlaceHolderAwsome extends StatelessWidget {
  const ImagePlaceHolderAwsome({
    super.key,
    this.height,
    this.width,
    required this.imagePath,
    this.shape = BoxShape.rectangle,
  });
  final double? height, width;
  final String imagePath;
  final BoxShape shape;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: shape,
        borderRadius: configAwsome.defaultBorderRadius,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
