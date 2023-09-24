import 'package:awsome_tools/awsome_tools.dart';

/// ## show String txt Base on Current State
extension TxtBaseOnState on BaseState {
  /// ## show String txt Base on Current State
  String getTxt({required String succesTitle, required String intialTitle}) {
    return switch (this) {
      InitalState() => intialTitle,
      LoadingState() => configAwsome.stringsAwsome.loading,
      WarningState() => configAwsome.stringsAwsome.warning,
      ErrorState() => configAwsome.stringsAwsome.error,
      NetworkErrorState() => configAwsome.stringsAwsome.networkError,
      // SuccesState() => configAwsome.stringsAwsome.success,
      // when success
      _ => succesTitle,
    };
  }
}
