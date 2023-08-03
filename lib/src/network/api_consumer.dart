abstract class APIsConsumer<BodyData> {
  Future<void> getALL(
    String endpoint, {
    Map<String, String>? headers,
  });
  Future<void> getByID(
    String endpoint,
    String id, {
    Map<String, String>? headers,
  });
  Future<void> post(
    String endpoint,
    BodyData body, {
    Map<String, String>? headers,
  });
  Future<void> put(
    String endpoint,
    BodyData body, {
    Map<String, String>? headers,
  });
  Future<void> delete(
    String endpoint, {
    Map<String, String>? headers,
  });
  void updateState(RequestState newState);
  late RequestState requestState;
}

abstract class RequestState<Data> {
  RequestState({this.error, this.data});
  final String? error;
  final Data? data;
}

class RequestLoading<Data> extends RequestState<Data> {}

class RequestError extends RequestState {
  RequestError(this.errorMessge) : super(error: errorMessge);
  final String errorMessge;
}

class RequestSucces<Value> extends RequestState {
  RequestSucces(this.value) : super(data: value);
  final Value value;
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