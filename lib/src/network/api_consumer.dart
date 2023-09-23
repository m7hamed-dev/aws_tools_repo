abstract class ApiConsumer {
  /// ## to create one
  Future post({
    required String path,
    required Map<String, dynamic> body,
    Map<String, dynamic>? queryPrameter,
    Map<String, dynamic>? header,
  });

  /// ## to get all
  Future findAll({
    required String path,
    Map<String, dynamic>? queryPrameter,
    Map<String, dynamic>? header,
  });

  /// ## to update
  Future update({
    required String path,
    required String id,
    required Map<dynamic, String> body,
    Map<String, dynamic>? queryPrameter,
    Map<String, dynamic>? header,
  });

  /// ## to get one by some condition
  Future findOne({
    required String path,
    required String id,
    Map<String, dynamic>? queryPrameter,
    Map<String, dynamic>? header,
  });

  /// ## delete by id
  Future delete({
    required String path,
    required String id,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryPrameter,
    Map<String, dynamic>? header,
  });
}
