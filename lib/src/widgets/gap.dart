import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({super.key, required this.size});
  final double size;
  @override
  Widget build(BuildContext context) {
    final parent = context.findAncestorWidgetOfExactType<Column>();
    if (parent != null) {
      return SizedBox(height: size);
    }
    return SizedBox(width: size);
  }
}
