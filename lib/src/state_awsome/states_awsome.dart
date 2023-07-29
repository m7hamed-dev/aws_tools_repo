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

class NetworkErrorState extends StateAwsome {
  NetworkErrorState({this.errorMessage = 'Signal Error!'})
      : super(message: errorMessage);
  final String errorMessage;
}

class EmptyDataState extends StateAwsome {
  EmptyDataState({this.emptyMessage = 'No Data Found!'})
      : super(message: emptyMessage);
  final String emptyMessage;
}

class WarningState extends StateAwsome {
  WarningState({this.warningMessage = 'Warning!'})
      : super(message: warningMessage);
  final String warningMessage;
}

class ErrorState extends StateAwsome {
  ErrorState({this.errorMessage = 'Error occurred!'})
      : super(message: errorMessage);
  final String errorMessage;
}
