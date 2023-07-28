abstract class CrudApiAswom<T> {
  // constractor
  const CrudApiAswom({required this.baseUrl, required this.apiEndpoint});
  // fields
  final String baseUrl;
  final String apiEndpoint;
  // fetch data
  Future<List<T>> getAll();
  // fetch data by id
  Future<T> getById(int id);
  // create a data
  Future<T> create(T item);
  // create a data
  Future<T> update(int id, T item);
  // create a data
  Future<void> delete(int id);
  // create a data
  List<T> parseList(String responseBody);
  // create a data
  T parseItem(String responseBody);
  // create a data
  String serializeItem(T item);
}
