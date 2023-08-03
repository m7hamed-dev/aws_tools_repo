import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

enum ShimmerShapes { circle, square, likeLisTtile }

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({
    super.key,
    this.width,
    this.height,
    this.scrollDirection = Axis.vertical,
    this.shimmerShape = ShimmerShapes.circle,
    this.itemCount = 1,
    required this.color,
  });
  final Color color;
  final ShimmerShapes shimmerShape;
  final double? width, height;
  final Axis scrollDirection;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    /// single shimmer
    if (itemCount == 1) {
      return ShimmerCard(
        width: width,
        height: height,
        shimmerShape: shimmerShape,
        color: color,
      );
    }

    /// List shimmer
    return SizedBox(
      height: scrollDirection == Axis.vertical ? null : height,
      child: ListView.builder(
        itemCount: itemCount,
        scrollDirection: scrollDirection,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ShimmerCard(
            width: width,
            height: height,
            shimmerShape: shimmerShape,
            color: color,
          );
        },
      ),
    );
  }
}

class ShimmerCard extends StatelessWidget {
  const ShimmerCard({
    super.key,
    required this.width,
    required this.height,
    this.shimmerShape = ShimmerShapes.circle,
    required this.color,
  });
  final Color color;
  final ShimmerShapes shimmerShape;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    if (shimmerShape == ShimmerShapes.likeLisTtile) {
      return Container(
        padding: EdgeInsets.all(configAwsome.defaultPadding),
        margin: EdgeInsets.all(configAwsome.defaultPadding - 5.0),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: configAwsome.defaultBorderRadius,
        ),
        child: const Stack(
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: ContainerWithHeight(width: 60.0, height: 50.0, index: 10),
            ),
            // const SizedBox(width: 10.0),
            Positioned(
              top: 0,
              left: 80.0,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: ContainerWithHeight(index: 0),
                  ),
                  SizedBox(height: 3.0),
                  Expanded(
                    flex: 3,
                    child: ContainerWithHeight(index: 1),
                  ),
                  SizedBox(height: 3.0),
                  Expanded(
                    flex: 3,
                    child: ContainerWithHeight(index: 2),
                  ),
                  SizedBox(height: 3.0),
                  Expanded(
                    flex: 2,
                    child: ContainerWithHeight(index: 3),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    ///
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(configAwsome.defaultPadding),
      decoration: BoxDecoration(
        border: shimmerShape == ShimmerShapes.circle
            ? Border.all(width: 4.0, color: Colors.black12)
            : null,
        shape: shimmerShape == ShimmerShapes.circle
            ? BoxShape.circle
            : BoxShape.rectangle,
        color: Colors.grey.withOpacity(.22),
        borderRadius: shimmerShape == ShimmerShapes.circle
            ? null
            : configAwsome.defaultBorderRadius,
      ),
    );
  }
}

class ContainerWithHeight extends StatelessWidget {
  const ContainerWithHeight({
    super.key,
    this.height,
    this.width,
    required this.index,
  });
  final double? height, width;
  final int index;
  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final endWidth = switch (index) {
      0 => widthScreen * .3,
      1 => widthScreen * .2,
      2 => widthScreen * .5,
      3 => widthScreen * .9,
      _ => width,
    };
    return Container(
      height: height,
      width: endWidth,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.33),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
    );
  }
}
