/// ## This abstract class to define some
/// ## func like curd methods
abstract class LocaDataAPIs<T> {
  const LocaDataAPIs(this.key);
  final String key;
  Future<T> getData();
  Future<void> saveData(T data);
  Future<void> updateData(T data);
  Future<bool> clearData();
}
