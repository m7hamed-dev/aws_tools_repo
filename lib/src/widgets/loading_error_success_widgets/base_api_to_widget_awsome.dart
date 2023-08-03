import 'package:flutter/material.dart';
import '../../../awsome_tools.dart';

/// ### take api State and return some widgets
/// ### Base on api State like loading , error
/// ### Success with Data
class BaseApiToWidget<Data> extends StatelessWidget {
  const BaseApiToWidget({
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
    return Center(
      child: switch (apiState) {
        //
        LoadingState() => loadingWidget ?? const CircularProgressIndicator(),
        //
        ErrorApiState() => errorWidget ??
            TxtAwsome(
              apiState.message,
              style: regularStyle.copyWith(color: Colors.red),
            ),
        //
        _ => success(apiState.data as Data),
      },
    );
  }
}
