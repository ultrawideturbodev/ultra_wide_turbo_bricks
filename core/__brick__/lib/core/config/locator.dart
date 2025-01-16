part of 'app_setup.dart';

class Locator {
  static void _registerAPIs() {
  }

  static void _registerRouters() {
    BaseRouter.registerLazySingleton();
    CoreRouter.registerFactory();
  }

  static void _registerViewModels() {
    StartupViewModel.registerFactory();
  }

  static void _registerFactories() {
  }

  static void _registerLazySingletons() {
  }

  static void _registerSingletons() {}

  static void _registerForms() {
  }
}
