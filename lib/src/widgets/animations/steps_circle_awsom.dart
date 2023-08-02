import 'dart:math';
import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

class StepsCirclAwsome extends StatelessWidget {
  const StepsCirclAwsome({
    super.key,
    required this.stepsCompleted,
    this.completedColor = primaryColorAwsome,
    this.remainingColor = Colors.grey,
    this.strokeWidth = 4.0,
  });

  final double strokeWidth;
  final int stepsCompleted;
  final Color completedColor;
  final Color remainingColor;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CircleProgressPainter(
        stepsCompleted: stepsCompleted,
        completedColor: completedColor,
        remainingColor: remainingColor,
      ),
      size: const Size.square(100.0),
    );
  }
}

class CircleProgressPainter extends CustomPainter {
  const CircleProgressPainter({
    required this.stepsCompleted,
    required this.completedColor,
    required this.remainingColor,
    this.strokeWidth = 4.0,
  });

  final double strokeWidth;
  final int stepsCompleted;
  final Color completedColor;
  final Color remainingColor;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = size.width / 2.0;
    // const strokeWidth = 10.0;
    // 3 steps, so each step covers 120 degrees
    const stepAngle = 2 * pi / 3;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    /// Draw completed steps
    for (int i = 0; i < stepsCompleted; i++) {
      paint.color = completedColor;
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        i * stepAngle,
        stepAngle,
        false,
        paint,
      );
    }

    /// Draw remaining steps
    for (int i = stepsCompleted; i < 3; i++) {
      paint.color = remainingColor;
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        i * stepAngle,
        stepAngle,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // oldDelegate.shouldRepaint(oldDelegate);
    return true;
  }
}
