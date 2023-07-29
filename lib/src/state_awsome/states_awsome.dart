import 'package:awsome_tools/awsome_tools.dart';

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
      : super(message: errorMessage ?? configAwsome.stringsAwsome.networkError);
  final String? errorMessage;
}

class EmptyDataState extends StateAwsome {
  EmptyDataState({this.emptyMessage = 'No Data Found!'})
      : super(message: emptyMessage);
  final String emptyMessage;
}

class WarningState extends StateAwsome {
  WarningState({this.warningMessage})
      : super(message: warningMessage ?? configAwsome.stringsAwsome.warning);
  final String? warningMessage;
}

class ErrorState extends StateAwsome {
  ErrorState({this.errorMessage})
      : super(message: errorMessage ?? configAwsome.stringsAwsome.error);
  final String? errorMessage;
}
