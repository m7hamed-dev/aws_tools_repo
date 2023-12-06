import '../config/config_awsome.dart';
import '../network/base_state_awsome.dart';

/// ## show String txt Base on Current State
extension TxtBaseOnState on BaseState {
  /// ## show String txt Base on Current State
  String txtBaseState(String string) {
    return switch (this) {
      InitalState() => string,
      LoadingState() => configAwsome.stringsAwsome.loading,
      WarningState() => configAwsome.stringsAwsome.warning,
      ErrorState() => configAwsome.stringsAwsome.error,
      SuccesState() => configAwsome.stringsAwsome.success,
      NetworkErrorState() => configAwsome.stringsAwsome.networkError,
      _ => string,
    };
  }
}

extension TxtBaseOnStateWithPrameters on BaseState {
  /// ## show String txt Base on Current State
  String getTxtWith({
    required String succesTitle,
    required String intialTitle,
  }) {
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
