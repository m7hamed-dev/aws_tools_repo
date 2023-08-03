import 'package:awsome_tools/awsome_tools.dart';

///
///
abstract class BaseApiState<Data> {
  const BaseApiState({this.message = '', this.data});
  final String message;
  final Data? data;
}

class InitalState<Data> extends BaseApiState<Data> {}

class LoadingState<Data> extends BaseApiState<Data> {}

class WarningState<String> extends BaseApiState<String> {
  WarningState({this.warning})
      : super(message: configAwsome.stringsAwsome.warning);
  final String? warning;
}

class ErrorState<String> extends BaseApiState<String> {
  ErrorState({required super.message});
}

class NoDataState<String> extends BaseApiState<String> {
  NoDataState({required super.message});
}

class NetworkErrorState<String> extends BaseApiState<String> {
  NetworkErrorState({required super.message});
}

class SuccesState<Data> extends BaseApiState<Data> {
  SuccesState({required this.successData}) : super(data: successData);
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