/// Abstract class for making HTTP requests to a RESTful API.
///
/// This class provides a set of methods for performing common HTTP operations
/// such as POST, GET (findAll and findOne), PUT (update), and DELETE on a RESTful
/// API.
///
/// To use this class, create a concrete subclass that implements the abstract
/// methods according to your API's requirements.
///
/// Example:
///
/// ```dart
/// class MyApiConsumer extends ApiConsumer {
///   MyApiConsumer({required String baseURL, required String accessToken})
///       : super(baseURL: baseURL, accessToken: accessToken);
///
/// ResponseType
/// ```
abstract class ApiConsumer<ResponseType> {
  /// The base URL of the API.
  final String baseURL;

  /// The access token to authenticate API requests.
  final String accessToken;

  /// Creates an instance of [ApiConsumer].
  ///
  /// The [baseURL] is the base URL of the API, and [accessToken] is the
  /// access token used for authentication.
  const ApiConsumer({required this.baseURL, required this.accessToken});

  /// Sends a POST request to the specified [path].
  ///
  /// The [body] parameter contains the request body data as a map.
  ///
  /// Optional [queryParameters] and [headers] can be provided for additional
  /// customization of the request.
  Future<ResponseType> post({
    required String path,
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  /// Sends a GET request to retrieve a list of resources.
  ///
  /// The [path] parameter specifies the endpoint for fetching the resources.
  ///
  /// Optional [queryParameters] and [headers] can be provided for additional
  /// customization of the request.
  Future<ResponseType> findAll({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  /// Sends a PUT request to update a resource.
  ///
  /// The [path] parameter specifies the endpoint for updating the resource,
  /// and [id] is the identifier of the resource to be updated.
  ///
  /// The [body] parameter contains the request body data as a map.
  ///
  /// Optional [queryParameters] and [headers] can be provided for additional
  /// customization of the request.
  Future<ResponseType> update({
    required String path,
    required String id,
    required Map<dynamic, String> body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  /// Sends a GET request to retrieve a single resource by its [id].
  ///
  /// The [path] parameter specifies the endpoint for fetching the resource,
  /// and [id] is the identifier of the resource to be retrieved.
  ///
  /// Optional [queryParameters] and [headers] can be provided for additional
  /// customization of the request.
  Future<ResponseType> findOne({
    required String path,
    required String id,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });

  /// Sends a DELETE request to delete a resource.
  ///
  /// The [path] parameter specifies the endpoint for deleting the resource,
  /// and [id] is the identifier of the resource to be deleted.
  ///
  /// Optional [body], [queryParameters], and [headers] can be provided for
  /// additional customization of the request.
  Future<ResponseType> delete({
    required String path,
    required String id,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  });
}
