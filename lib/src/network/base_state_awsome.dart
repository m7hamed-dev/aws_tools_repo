import 'package:awsome_tools/awsome_tools.dart';

abstract class BaseApiState<Data> {
  BaseApiState({required this.message, this.data});
  final String message;
  final Data? data;
}

class InitalState<Data> extends BaseApiState<Data> {
  InitalState({required super.message});
}

class LoadingState<Data> extends BaseApiState<Data> {
  LoadingState({required super.message});
}

class WarningState<Data> extends BaseApiState<Data> {
  WarningState({this.warning})
      : super(message: warning ?? configAwsome.stringsAwsome.warning);
  final String? warning;
}

class ErrorState<Data> extends BaseApiState<Data> {
  ErrorState({this.error})
      : super(message: error ?? configAwsome.stringsAwsome.error);
  final String? error;
}

class NoDataState<Data> extends BaseApiState<Data> {
  NoDataState({this.noData})
      : super(message: noData ?? configAwsome.stringsAwsome.noData);
  final String? noData;
}

class NetworkErrorState<Data> extends BaseApiState<Data> {
  NetworkErrorState({this.netWorkError})
      : super(message: netWorkError ?? configAwsome.stringsAwsome.networkError);
  final String? netWorkError;
}

class SuccesState<Data> extends BaseApiState<Data> {
  SuccesState({required this.successData})
      : super(data: successData, message: 'success!');
  final Data successData;
}



// Base Result class
/// [S] represents the type of the success value
/// [E] should be [Exception] or a subclass of it
// sealed class Result<S, E extends Exception> {
//   const Result();
// }

// final class Success<S, E extends Exception> extends Result<S, E> {
//   const Success(this.value);
//   final S value;
// }

// final class Failure<S, E extends Exception> extends Result<S, E> {
//   const Failure(this.exception);
//   final E exception;
// }

// final class Loading extends Result {
//   const Loading();
// }