import 'package:awsome_tools/src/config/config_awsome.dart';
import 'package:awsome_tools/src/widgets/txt_awsome.dart';
import 'package:flutter/material.dart';

class ErrorAwsome extends StatelessWidget {
  const ErrorAwsome({
    super.key,
    this.error = '',
    this.showWidgetType = ShowWidgetTypes.text,
  });
  final String error;
  final ShowWidgetTypes showWidgetType;
  @override
  Widget build(BuildContext context) {
    if (showWidgetType == ShowWidgetTypes.withScaffold) {
      return Scaffold(
        body: TxtAwsome(error),
      );
    }
    return TxtAwsome(error);
  }
}
