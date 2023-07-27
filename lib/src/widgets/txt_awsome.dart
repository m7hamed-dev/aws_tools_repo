import 'package:flutter/material.dart';

class TxtAwsome extends StatelessWidget {
  /// Text
  const TxtAwsome(this.data, {super.key, this.txtColor, this.style});
  final String data;
  final Color? txtColor;
  final TextStyle? style;

  ///
  @override
  Widget build(BuildContext context) {
    return Text(data, style: style);
  }
}
