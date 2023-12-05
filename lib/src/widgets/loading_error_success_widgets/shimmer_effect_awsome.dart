import 'package:flutter/material.dart';
import '../../config/config_awsome.dart';

enum ShimmerShapes { circle, square, likeLisTtile }

class ShimmerEffectAwsome extends StatefulWidget {
  const ShimmerEffectAwsome({
    super.key,
    this.width,
    this.height,
    this.scrollDirection = Axis.vertical,
    this.shimmerShape = ShimmerShapes.circle,
    this.itemCount = 1,
    required this.color,
    this.showScaffold = false,
    this.margin,
    this.padding,
    this.textDirection = TextDirection.ltr,
  });

  final EdgeInsets? padding, margin;
  final bool showScaffold;
  final TextDirection textDirection;
  final Color color;
  final ShimmerShapes shimmerShape;
  final double? width, height;
  final Axis scrollDirection;
  final int itemCount;

  @override
  State<ShimmerEffectAwsome> createState() => _ShimmerEffectAwsomeState();
}

class _ShimmerEffectAwsomeState extends State<ShimmerEffectAwsome> {
  late Widget child;
  @override
  void initState() {
    super.initState();
    child = const SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    /// # Show Scaffold with a Single shimmer
    if (widget.itemCount == 1) {
      if (widget.showScaffold) {
        child = Scaffold(
          body: ShimmerCard(
            width: widget.width,
            height: widget.height,
            margin: widget.margin,
            padding: widget.padding,
            shimmerShape: widget.shimmerShape,
            color: widget.color,
          ),
        );
      }

      /// # Showa Single shimmer
      child = ShimmerCard(
        width: widget.width,
        height: widget.height,
        margin: widget.margin,
        padding: widget.padding,
        shimmerShape: widget.shimmerShape,
        color: widget.color,
      );
    }

    /// # Show Scaffold with Lisview
    if (widget.showScaffold) {
      child = Scaffold(
        body: SizedBox(
          height:
              widget.scrollDirection == Axis.vertical ? null : widget.height,
          child: ListView.builder(
            itemCount: widget.itemCount,
            scrollDirection: widget.scrollDirection,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return ShimmerCard(
                width: widget.width,
                height: widget.height,
                shimmerShape: widget.shimmerShape,
                color: widget.color,
                margin: widget.margin,
                padding: widget.padding,
              );
            },
          ),
        ),
      );
    }

    /// List shimmer
    child = SizedBox(
      height: widget.scrollDirection == Axis.vertical ? null : widget.height,
      child: ListView.builder(
        itemCount: widget.itemCount,
        scrollDirection: widget.scrollDirection,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ShimmerCard(
            width: widget.width,
            height: widget.height,
            margin: widget.margin,
            padding: widget.padding,
            shimmerShape: widget.shimmerShape,
            color: widget.color,
          );
        },
      ),
    );

    ///
    return Builder(
      builder: (context) => Directionality(
        textDirection: widget.textDirection,
        child: child,
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
    this.margin,
    this.padding,
  });

  final EdgeInsets? padding, margin;
  final Color color;
  final ShimmerShapes shimmerShape;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    if (shimmerShape == ShimmerShapes.likeLisTtile) {
      return Container(
        padding: padding,
        margin: margin,
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
      padding: padding,
      margin: margin,
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
