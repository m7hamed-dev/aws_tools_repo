abstract class APIsConsumer<BodyType, FunReturn> {
  Future<List<FunReturn>> getALL(
    String endpoint, {
    Map<String, String>? headers,
  });
  Future<FunReturn> getByID(
    String endpoint,
    String id, {
    Map<String, String>? headers,
  });
  Future<FunReturn> post(
    String endpoint,
    BodyType body, {
    Map<String, String>? headers,
  });
  Future<FunReturn> put(
    String endpoint,
    BodyType body, {
    Map<String, String>? headers,
  });
  Future<FunReturn> delete(
    String endpoint, {
    Map<String, String>? headers,
  });
}

class ApiError {
  ApiError(this.statusCode, this.message);
  final int statusCode;
  final String message;
  @override
  String toString() {
    return 'ApiError: Status Code $statusCode, Message: $message';
  }
}
