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
  });

  ///
  final RequestState<Data> requestState;
  final Widget? init, loading, errorWidget;
  final Widget Function(Data data) success;
  //
  @override
  Widget build(BuildContext context) {
    final widget = Center(
      child: Center(
        child: switch (requestState) {
          // getting loading
          RequestLoading() => loading ?? const CircularProgressIndicator(),
          // getting error
          RequestError() => errorWidget ??
              TxtAwsome(
                requestState.error ?? configAwsome.stringsAwsome.error,
                style: regularStyle.copyWith(color: Colors.red),
              ),
          // getting success
          _ => success(requestState.data as Data),
        },
      ),
    );
    return widget;
  }
}
