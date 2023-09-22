import 'package:flutter/material.dart';

/// ## your widget with glowing effect
class GlowCircleAnimationAwsome extends StatefulWidget {
  /// ## your widget with glowing effect
  const GlowCircleAnimationAwsome({
    super.key,
    required this.glowColor,
    required this.child,
    this.glowHeight = 34.0,
    this.glowWidth = 34.0,
    this.height = 30.0,
    this.width = 30.0,
    this.duration = const Duration(milliseconds: 400),
  });

  final Color glowColor;
  final double glowHeight, glowWidth, height, width;
  final Widget child;
  final Duration duration;
  @override
  GlowCircleAnimationAwsomeState createState() =>
      GlowCircleAnimationAwsomeState();
}

class GlowCircleAnimationAwsomeState extends State<GlowCircleAnimationAwsome>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    // Create an animation controller
    _controller = AnimationController(vsync: this, duration: widget.duration);
    // Start the animation
    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Stack(
            alignment: Alignment.center,
            children: [
              /// first container
              Container(
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.glowColor,
                ),
              ),

              /// glow container
              Container(
                width: widget.glowWidth,
                height: widget.glowHeight,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.glowColor.withOpacity(0.3),
                  boxShadow: [
                    BoxShadow(
                      color: widget.glowColor.withOpacity(
                        0.7 * (1 - _controller.value),
                      ),
                      spreadRadius: 10,
                      blurRadius: 30,
                    ),
                  ],
                ),
              ),

              /// child
              widget.child,
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
