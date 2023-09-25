/// A Dart extension on integers to check if a status code represents a successful HTTP response.
extension StatusCodeExtension on int {
  /// Returns `true` if the status code is within the 2xx range (indicating a successful response),
  /// and `false` otherwise.
  ///
  /// For HTTP status codes, a status code in the range [200, 300) typically indicates success.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final statusCode = 200;
  /// final isSuccess = statusCode.isSuccess; // Returns true
  /// ```
  bool get isSuccess => this >= 200 && this < 300;
}

/// # HttpStatus  informational, success , redirection, clientError, serverError, unknown
enum HttpStatus {
  informational,
  success,
  redirection,
  clientError,
  serverError,
  unknown
}

extension HttpResponseExtension on int {
  HttpStatus get getHttpStatus {
    return switch (this) {
      >= 100 && < 200 => HttpStatus.informational,
      >= 200 && < 300 => HttpStatus.success,
      >= 300 && < 400 => HttpStatus.redirection,
      >= 400 && < 500 => HttpStatus.clientError,
      >= 500 && < 600 => HttpStatus.serverError,
      _ => HttpStatus.unknown,
    };
  }
}

extension ResponseToStringExtension on HttpStatus {
  String get getMessage {
    return switch (this) {
      HttpStatus.informational => '',
      HttpStatus.clientError => '',
      HttpStatus.serverError => '',
      HttpStatus.redirection => '',
      _ => 'Error UnKnown!',
    };
  }
}
