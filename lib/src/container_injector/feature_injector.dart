// # FeatureInjector
abstract class FeatureInjector {
  void providerInject();
  void repositoryInject();
  void dataSourceInject();
  void useCasesInject();
  void registerAll();
}
