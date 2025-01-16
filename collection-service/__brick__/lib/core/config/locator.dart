part of 'app_setup.dart';

class Locator {
  static void _registerAPIs() {
    {{collectionName.pascalCase()}}Api.registerFactory();
  }

  static void _registerRouters() {
  }

  static void _registerViewModels() {
  }

  static void _registerFactories() {
  }

  static void _registerLazySingletons() {
    {{collectionName.pascalCase()}}Service.registerLazySingleton();
  }

  static void _registerSingletons() {}

  static void _registerForms() {
  }
}
