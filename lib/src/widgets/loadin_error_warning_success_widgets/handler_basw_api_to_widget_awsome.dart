import 'package:flutter/material.dart';
import '../../../awsome_tools.dart';
import '../../network/base_state_awsome.dart';

class HandlerBaseApiToWidget<Data> extends StatelessWidget {
  const HandlerBaseApiToWidget({
    super.key,
    required this.apiState,
    required this.success,
    this.initWidget,
    this.loadingWidget,
    this.errorWidget,
  });

  ///
  final BaseApiState<Data> apiState;
  final Widget? initWidget, loadingWidget, errorWidget;
  final Widget Function(Data data) success;
  //
  @override
  Widget build(BuildContext context) {
    final widget = Center(
      child: Center(
        child: switch (apiState) {
          LoadingApiState() =>
            loadingWidget ?? const CircularProgressIndicator(),
          ErrorApiState() => errorWidget ??
              TxtAwsome(apiState.error,
                  style: regularStyle.copyWith(color: Colors.red)),
          // getting success
          _ => success(apiState.data as Data),
        },
      ),
    );
    return widget;
  }
}
