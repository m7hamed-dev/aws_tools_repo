import 'package:flutter/material.dart';
import '../../awsome_tools.dart';

class HandlerRequesWidgetAwsome<Data> extends StatelessWidget {
  const HandlerRequesWidgetAwsome({
    super.key,
    required this.requestState,
    required this.success,
    this.init,
    this.loading,
    this.errorWidget,
    // this.errorMessage = 'Error ',
  });
  final RequestState<Data> requestState;
  final Widget? init, loading;
  final Widget Function(Data data) success;
  final Widget? errorWidget;

  ///
  @override
  Widget build(BuildContext context) {
    final widget = Center(
      child: Center(
        child: switch (requestState) {
          RequestLoading() => loading ?? const CircularProgressIndicator(),
          RequestError() => errorWidget ??
              TxtAwsome(
                requestState.error ?? configAwsome.stringsAwsome.error,
                style: regularStyle.copyWith(color: Colors.red),
              ),
          _ => success(requestState.data as Data),
        },
      ),
    );
    return widget;
  }
}
