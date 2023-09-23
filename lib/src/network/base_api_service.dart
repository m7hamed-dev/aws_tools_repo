abstract class BaseApiService {
  Future<dynamic> fetchData(String endpoint);
  Future<dynamic> fetchByID(String endpoint, String id);
  Future<void> createData(String endpoint, Map<String, dynamic> data);
  Future<void> updateData(String endpoint, Map<String, dynamic> data);
  Future<void> deleteData(String endpoint);
}
