///
///
abstract class RequestStateAwsome<Data> {
  const RequestStateAwsome({this.error = '', required this.data});
  final String error;
  final Data data;
}

class RequestLoadingAwsome<Data> extends RequestStateAwsome<Data> {
  RequestLoadingAwsome({required super.data});
}

class RequestErrorAwsome<String> extends RequestStateAwsome<String> {
  RequestErrorAwsome({required super.data, required super.error});
}

class RequestSucces<Value> extends RequestStateAwsome<Value> {
  RequestSucces({required this.successData}) : super(data: successData);
  final Value successData;
}

class ClassName {
  late RequestStateAwsome<bool> requestStateAwsome;
  void onPressed() {
    requestStateAwsome = RequestErrorAwsome(data: false, error: 'my erro is');
    requestStateAwsome = RequestLoadingAwsome(data: false);
    requestStateAwsome = RequestSucces(successData: false);
  }
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