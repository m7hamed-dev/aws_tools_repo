import 'package:awsome_tools/src/widgets/dot_indicator_awsome.dart';
import 'package:flutter/material.dart';
import 'package:awsome_tools/src/extensions/screen_size_ext.dart';

/// ## PageViewAwsome
class PageViewAwsome extends StatelessWidget {
  /// ## PageViewAwsome
  const PageViewAwsome({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.width,
    this.height,
    this.currentPage = 0,
    this.onPageChanged,
    this.selectedDotColor,
    this.unsSelectedDotColor,
    this.shape = BoxShape.circle,
    //
    this.top,
    this.right,
    this.bottom,
    this.left,
  });

  ///
  final int itemCount;
  final double? width;
  final double? height;
  final int currentPage;
  final Function(int)? onPageChanged;
  final BoxShape shape;
  final Color? selectedDotColor, unsSelectedDotColor;
  final Widget Function(BuildContext, int) itemBuilder;

  /// ## for
  final double? top, right, left, bottom;

  ///
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? context.width,
      height: height ?? context.height * 0.20,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: itemCount,
            controller: PageController(initialPage: currentPage),
            onPageChanged: onPageChanged,
            itemBuilder: itemBuilder,
          ),
          Positioned(
            top: top,
            bottom: bottom,
            right: right,
            left: left,
            child: DotIndicatorAwsome(
              itemCount: itemCount,
              currentIndex: currentPage,
              shape: shape,
              selectedDotColor: selectedDotColor,
              unsSelectedDotColor: unsSelectedDotColor,
            ),
          ),
        ],
      ),
    );
  }
}
