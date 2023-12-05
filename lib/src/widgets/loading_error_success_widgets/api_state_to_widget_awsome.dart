import '../txt_awsome.dart';
import 'package:flutter/material.dart';
import '../../style/txt_style_awsome.dart';
import '../../network/base_state_awsome.dart';
import 'package:awsome_tools/src/extensions/color_base_on_state.dart';

class ApiStateToWidget<Data> extends StatelessWidget {
  /// ## Take an Api State and Return widget base on Current State
  const ApiStateToWidget({
    super.key,
    required this.state,
    required this.success,
    this.initWidget,
    this.loadingWidget,
    this.errorWidget,
    this.errorWidgetBuilder,
  });

  ///
  final BaseState<Data> state;
  final Widget? initWidget, loadingWidget, errorWidget;
  final Widget Function(Data data) success;
  final Widget Function(String errorMessage)? errorWidgetBuilder;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: switch (state) {
        InitalState() => initWidget ?? const SizedBox(),
        LoadingState() => loadingWidget ?? const CircularProgressIndicator(),
        ErrorState() ||
        WarningState() ||
        NetworkErrorState() =>
          errorWidgetBuilder != null
              ? errorWidgetBuilder!(state.msg ?? 'Error Ocure!')
              : errorWidget ??
                  TxtAwsome(
                    state.msg ?? '',
                    style: regularStyle.copyWith(
                      color: state.colorBaseOnStarte,
                    ),
                    overflow: TextOverflow.clip,
                  ),
        _ => success(state.data as Data),
      },
    );
  }
}
