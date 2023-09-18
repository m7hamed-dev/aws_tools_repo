import 'package:flutter/material.dart';
import 'dot_indicator_awsome.dart';

class PageViewWithDotIndicator extends StatelessWidget {
  const PageViewWithDotIndicator({
    super.key,
    required this.itemCount,
    required this.width,
    required this.height,
    this.currentPage = 0,
    this.onPageChanged,
    this.top,
    this.right,
    this.bottom,
    this.left,
  });

  ///
  final int itemCount;
  final double width;
  final double height;
  final int currentPage;
  final Function(int)? onPageChanged;

  /// ## for
  final double? top, right, left, bottom;

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            PageView.builder(
              itemCount: itemCount,
              controller: PageController(initialPage: currentPage),
              onPageChanged: onPageChanged,
              itemBuilder: (context, index) {
                return const Placeholder();
              },
            ),
            Positioned(
              top: top,
              bottom: bottom,
              right: right,
              left: left,
              child: DotIndicator(
                itemCount: itemCount,
                currentIndex: currentPage,
                // shape: BoxShape.rectangle,
                // width: currentPage == 0 ? 100 : 10,
                // height: currentPage == 0 ? 200 : 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
