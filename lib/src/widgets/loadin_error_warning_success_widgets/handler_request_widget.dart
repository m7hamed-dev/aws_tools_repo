import 'package:flutter/material.dart';
import '../../../awsome_tools.dart';
import '../../network/request_state_awsome.dart';

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
  final RequestStateAwsome<Data> requestState;
  final Widget? init, loading, errorWidget;
  final Widget Function(Data data) success;
  //
  @override
  Widget build(BuildContext context) {
    final widget = Center(
      child: Center(
        child: switch (requestState) {
          RequestLoadingAwsome() =>
            loading ?? const CircularProgressIndicator(),
          RequestErrorAwsome() => errorWidget ??
              TxtAwsome(requestState.error,
                  style: regularStyle.copyWith(color: Colors.red)),
          // getting success
          _ => success(requestState.data),
        },
      ),
    );
    return widget;
  }
}
