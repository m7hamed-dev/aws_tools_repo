/// A base class for making API requests.
///
/// This abstract class defines methods for common API operations such as
/// creating, reading, updating, and deleting resources.
///
/// Implementations of this class should provide concrete implementations
/// for these methods.
abstract class ApiConsumer {
  /// Creates a new resource.
  ///
  /// Use this method to create a new resource by sending a POST request
  /// to the specified [path] with the given [body].
  ///
  /// Optional [queryParameters] and [headers] can be provided for customization.
  ///
  /// Returns a [Future] that completes when the request is finished.
  Future post({
    required String path,
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  /// Retrieves all resources.
  ///
  /// Use this method to get a list of all resources by sending a GET request
  /// to the specified [path].
  ///
  /// Optional [queryParameters] and [headers] can be provided for customization.
  ///
  /// Returns a [Future] that completes with the response data.
  Future findAll({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  /// Updates an existing resource.
  ///
  /// Use this method to update an existing resource by sending a PUT request
  /// to the specified [path] with the given [id] and [body].
  ///
  /// Optional [queryParameters] and [headers] can be provided for customization.
  ///
  /// Returns a [Future] that completes when the request is finished.
  Future update({
    required String path,
    required String id,
    required Map<dynamic, String> body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  /// Retrieves a single resource by ID.
  ///
  /// Use this method to get a specific resource by sending a GET request
  /// to the specified [path] with the given [id].
  ///
  /// Optional [queryParameters] and [headers] can be provided for customization.
  ///
  /// Returns a [Future] that completes with the response data.
  Future findOne({
    required String path,
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  /// Deletes a resource by ID.
  ///
  /// Use this method to delete a specific resource by sending a DELETE request
  /// to the specified [path] with the given [id].
  ///
  /// Optional [body], [queryParameters], and [headers] can be provided for customization.
  ///
  /// Returns a [Future] that completes when the request is finished.
  Future delete({
    required String path,
    required String id,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });
}
