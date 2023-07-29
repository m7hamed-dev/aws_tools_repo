import 'package:flutter/material.dart';
import '../../awsome_tools.dart';

class HandlerRequesWidgetAwsome<Data> extends StatelessWidget {
  const HandlerRequesWidgetAwsome({
    super.key,
    required this.requestState,
    this.init,
    this.loading,
    this.error,
    required this.success,
    this.setAnimation = false,
    this.errorMessage = 'Error ',
  });
  final RequestState<Data> requestState;
  final Widget? init, loading, error;
  final Widget success;
  final bool setAnimation;
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    final currentWidget = switch (requestState) {
      InitalState() => init ?? const CircularProgressIndicator(),
      LoadingState() => loading ?? const CircularProgressIndicator(),
      ErrorState() => error ?? TxtAwsome(errorMessage),
      _ => success
    };
    return currentWidget;
  }
}
