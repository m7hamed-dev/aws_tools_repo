abstract class StateAwsome {
  const StateAwsome({this.message = ''});
  final String message;
}

class InitalState extends StateAwsome {}

class SuccessState extends StateAwsome {
  SuccessState({this.successMessage = 'Success!'})
      : super(message: successMessage);
  final String successMessage;
}

class LoadingState extends StateAwsome {}

class EmptyDataState extends StateAwsome {}

class WarningState extends StateAwsome {}

class ErrorState extends StateAwsome {
  ErrorState({this.errorMessage = 'Error occurred!'})
      : super(message: errorMessage);
  final String errorMessage;
}
