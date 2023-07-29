abstract class APIsConsumer<BodyData> {
  Future<void> getALL(
    String endpoint, {
    Map<String, String>? headers,
  });
  Future<APIsStates?> getByID(
    String endpoint,
    String id, {
    Map<String, String>? headers,
  });
  Future<APIsStates> post(
    String endpoint,
    BodyData body, {
    Map<String, String>? headers,
  });
  Future<APIsStates> put(
    String endpoint,
    BodyData body, {
    Map<String, String>? headers,
  });
  Future<APIsStates> delete(
    String endpoint, {
    Map<String, String>? headers,
  });
  void updateState(APIsStates newState);
  late APIsStates apiState;
}

abstract class APIsStates<Data> {
  APIsStates({this.error, this.data});
  final String? error;
  final Data? data;
}

class APIsLoading implements APIsStates {
  @override
  get data => null;

  @override
  String? get error => null;
}

class APIsError extends APIsStates {
  final String errorMessge;
  APIsError(this.errorMessge) : super(error: errorMessge);
}

class APIsSucces<Value> extends APIsStates {
  APIsSucces(this.value) : super(data: value);
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

// class ApiError {
//   ApiError(this.statusCode, this.message);
//   final int statusCode;
//   final String message;
//   @override
//   String toString() {
//     return 'ApiError: Status Code $statusCode, Message: $message';
//   }
// }
