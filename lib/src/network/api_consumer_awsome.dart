import 'base_state_awsome.dart';

abstract class APIsConsumer<BodyData> {
  ///
  Future<void> fetchAll(String endpoint, {Map<String, String>? headers});

  ///
  Future<void> fetchById(String endpoint, String id,
      {Map<String, String>? headers});

  ///
  Future<void> post(String endpoint, BodyData body,
      {Map<String, String>? headers});

  ///
  Future<void> put(String endpoint, BodyData body,
      {Map<String, String>? headers});

  ///
  Future<void> delete(String endpoint, {Map<String, String>? headers});

  ///
  void updateState(BaseApiState newState);
  late BaseApiState requestState;
}
