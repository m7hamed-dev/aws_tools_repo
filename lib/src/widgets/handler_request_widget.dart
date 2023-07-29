import 'package:flutter/material.dart';
import '../../awsome_tools.dart';

class HandlerRequesWidgetAwsome<Data> extends StatelessWidget {
  const HandlerRequesWidgetAwsome({
    super.key,
    required this.requestState,
    required this.success,
    this.init,
    this.loading,
    this.error,
    this.errorMessage = 'Error ',
  });
  final RequestState<Data> requestState;
  final Widget? init, loading, error;
  final Widget success;
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    final widget = switch (requestState) {
      RequestLoading() => loading ?? const CircularProgressIndicator(),
      RequestError() => error ?? TxtAwsome(errorMessage),
      _ => success
    };
    return widget;
  }
}
