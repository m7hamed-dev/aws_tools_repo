/// ## This abstract class to define some
/// ## func like curd methods
abstract class LocaDataAPIs<T> {
  const LocaDataAPIs(this.key);
  final String key;
  Future<T> getData();
  Future<void> create(T data);
  Future<void> update(T data);
  Future<void> delete(T data);
  Future<bool> get clearData;
}
