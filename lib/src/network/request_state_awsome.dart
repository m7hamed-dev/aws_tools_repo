///
///
abstract class RequestStateAwsome<Data> {
  const RequestStateAwsome({this.error = '', this.data});
  final String error;
  final Data? data;
}

class RequestLoadingAwsome<Data> extends RequestStateAwsome<Data> {}

class RequestErrorAwsome<String> extends RequestStateAwsome<String> {
  RequestErrorAwsome({required super.error});
}

class RequestSucces<Data> extends RequestStateAwsome<Data> {
  RequestSucces({required this.successData}) : super(data: successData);
  final Data successData;
}

class ClassName {
  late RequestStateAwsome<bool> requestStateAwsome;
  void onPressed() {
    requestStateAwsome = RequestErrorAwsome(error: 'my erro is');
    requestStateAwsome = RequestLoadingAwsome();
    requestStateAwsome = RequestSucces(successData: false);
    if (requestStateAwsome is RequestSucces) {
      requestStateAwsome.data!;
    }
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