abstract class StateAwsome {
  const StateAwsome({this.error = ''});
  final String error;
}

class InitalState extends StateAwsome {}

class SuccessState extends StateAwsome {}

class LoadingState extends StateAwsome {}

class EmptyDataState extends StateAwsome {}

class WarningState extends StateAwsome {}

class ErrorState extends StateAwsome {
  ErrorState({this.errorMessage = ''}) : super(error: errorMessage);
  final String errorMessage;
}
