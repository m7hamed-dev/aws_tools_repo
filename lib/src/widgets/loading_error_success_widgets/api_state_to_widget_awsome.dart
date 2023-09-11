import 'package:awsome_tools/src/extensions/color_base_on_state.dart';
import 'package:flutter/material.dart';
import '../../../awsome_tools.dart';

class ApiStateToWidget<Data> extends StatelessWidget {
  /// ### take api State and return widget base on Current State
  const ApiStateToWidget({
    super.key,
    required this.state,
    required this.success,
    this.initWidget,
    this.loadingWidget,
    this.errorWidget,
  });

  ///
  final BaseApiState<Data> state;
  final Widget? initWidget, loadingWidget, errorWidget;
  final Widget Function(Data data) success;

  ///
  @override
  Widget build(BuildContext context) {
    return Center(
      child: switch (state) {
        LoadingState() => loadingWidget ?? const CircularProgressIndicator(),
        SuccesState() => success(state.data as Data),
        _ => errorWidget ??
            TxtAwsome(
              state.message,
              style: regularStyle.copyWith(color: state.colorBaseOnStarte),
            )
      },
    );
  }
}
