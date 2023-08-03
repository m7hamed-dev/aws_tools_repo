import 'package:awsome_tools/src/config/config_awsome.dart';
import 'package:awsome_tools/src/widgets/txt_awsome.dart';
import 'package:flutter/material.dart';

class ErrorWidgetAwsome extends StatelessWidget {
  const ErrorWidgetAwsome({
    super.key,
    this.error = '',
    this.showWidgetType = ShowWidgetTypes.text,
  });
  final String error;
  final ShowWidgetTypes showWidgetType;
  @override
  Widget build(BuildContext context) {
    if (showWidgetType == ShowWidgetTypes.withScaffold) {
      return Scaffold(body: TxtAwsome(error));
    }
    if (showWidgetType == ShowWidgetTypes.iconWithScaffold) {
      return const Scaffold(body: Icon(Icons.error, color: Colors.red));
    }
    if (showWidgetType == ShowWidgetTypes.icon) {
      return const Icon(Icons.error, color: Colors.red);
    }
    return TxtAwsome(error);
  }
}
