import 'package:flutter/material.dart';

class TxtAwsome extends StatelessWidget {
  /// Text
  const TxtAwsome({super.key, this.data = '', this.txtColor});
  final String data;
  final Color? txtColor;
  @override
  Widget build(BuildContext context) {
    return Text(data);
  }
}
