abstract class APIsConsumer<BodyData, ReturnType> {
  Future<Result<List<ReturnType>, Exception>> getALL(
    String endpoint, {
    Map<String, String>? headers,
  });
  Future<ReturnType?> getByID(
    String endpoint,
    String id, {
    Map<String, String>? headers,
  });
  Future<ReturnType> post(
    String endpoint,
    BodyData body, {
    Map<String, String>? headers,
  });
  Future<ReturnType> put(
    String endpoint,
    BodyData body, {
    Map<String, String>? headers,
  });
  Future<ReturnType> delete(
    String endpoint, {
    Map<String, String>? headers,
  });
}

// Base Result class
/// [S] represents the type of the success value
/// [E] should be [Exception] or a subclass of it
sealed class Result<S, E extends Exception> {
  const Result();
}

final class Success<S, E extends Exception> extends Result<S, E> {
  const Success(this.value);
  final S value;
}

final class Failure<S, E extends Exception> extends Result<S, E> {
  const Failure(this.exception);
  final E exception;
}

final class Loading extends Result {
  const Loading();
}

// class ApiError {
//   ApiError(this.statusCode, this.message);
//   final int statusCode;
//   final String message;
//   @override
//   String toString() {
//     return 'ApiError: Status Code $statusCode, Message: $message';
//   }
// }
