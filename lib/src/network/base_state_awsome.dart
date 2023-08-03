///
///
abstract class BaseApiState<Data> {
  const BaseApiState({this.error = 'Error Ocure!!', this.data});
  final String error;
  final Data? data;
}

class LoadingApiState<Data> extends BaseApiState<Data> {}

class ErrorApiState<String> extends BaseApiState<String> {
  ErrorApiState({required super.error});
}

class SuccesApiState<Data> extends BaseApiState<Data> {
  SuccesApiState({required this.successData}) : super(data: successData);
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