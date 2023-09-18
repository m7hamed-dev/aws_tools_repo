import 'package:awsome_tools/src/extensions/color_base_on_state.dart';
import 'package:flutter/material.dart';
import '../../../awsome_tools.dart';

class ApiStateToWidget<Data> extends StatelessWidget {
  /// ## Take an Api State and Return widget base on Current State
  const ApiStateToWidget({
    super.key,
    required this.apiStates,
    required this.success,
    this.initWidget,
    this.loadingWidget,
    this.errorWidget,
  });

  ///
  final BaseApiState<Data> apiStates;
  final Widget? initWidget, loadingWidget, errorWidget;
  final Widget Function(Data data) success;

  @override
  Widget build(BuildContext context) {
    return switch (apiStates) {
      InitalState() => initWidget ?? const SizedBox(),
      LoadingState() => loadingWidget ?? const CircularProgressIndicator(),
      ErrorState() || WarningState() || NetworkErrorState() => errorWidget ??
          TxtAwsome(
            apiStates.message ?? '',
            style: regularStyle.copyWith(color: apiStates.colorBaseOnStarte),
            overflow: TextOverflow.clip,
          ),
      _ => success(apiStates.data as Data),
    };
  }
}