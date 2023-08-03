/// ### This abstract class to define some
/// ### func like curd methods
/// ### Data === data to save , delete or update
/// ### GetDataType === data to getting from source
abstract class LocaDataAPIs<Data, GetDataType> {
  const LocaDataAPIs(this.key);
  final String key;
  Future<GetDataType> getData();
  Future<void> create(Data data);
  Future<void> update(Data data);
  Future<void> delete(Data data);
  Future<bool> get clearData;
}
