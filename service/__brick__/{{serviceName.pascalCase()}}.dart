import 'dart:async';
import 'package:get_it/get_it.dart';
import 'package:{{packageName.snakeCase()}}/core/extensions/completer_extension.dart';

class {{serviceName.pascalCase()}}Service {
  {{serviceName.pascalCase()}}Service() {
    initialise();
  }

  // 📍 LOCATOR ------------------------------------------------------------------------------- \\

  // TODO(ultrawideturbodev): Choose | 16/01/2025
  static {{serviceName.pascalCase()}}Service get locate => GetIt.I.get();
  static {{serviceName.pascalCase()}}Service Function() get lazyLocate => () => GetIt.I.get();
  static {{serviceName.pascalCase()}}Service locate({required String userId}) => GetIt.I.get(param1: userId);

  static void registerLazySingleton() => GetIt.I.registerLazySingleton({{serviceName.pascalCase()}}Service.new);
  static void registerFactory() => GetIt.I.registerFactory({{serviceName.pascalCase()}}Service.new);
  static void registerSingleton() => GetIt.I.registerSingleton<{{serviceName.pascalCase()}}Service>({{serviceName.pascalCase()}}Service());
  static void registerFactoryParam() => GetIt.I.registerFactoryParam<{{serviceName.pascalCase()}}Service, void, void>(
        (param1, param2) => {{serviceName.pascalCase()}}Service(),
      );

  // 🧩 DEPENDENCIES -------------------------------------------------------------------------- \\
  // 🎬 INIT & DISPOSE ------------------------------------------------------------------------ \\

  Future<void> initialise() async {
    _isReady.completeIfNotComplete();
  }

  void dispose() {
    _isReady = Completer();
  }

  // 👂 LISTENERS ----------------------------------------------------------------------------- \\
  // ⚡️ OVERRIDES ----------------------------------------------------------------------------- \\
  // 🎩 STATE --------------------------------------------------------------------------------- \\

  var _isReady = Completer();

  // 🛠 UTIL ---------------------------------------------------------------------------------- \\
  // 🧲 FETCHERS ------------------------------------------------------------------------------ \\

  Future get isReady => _isReady.future;

// 🏗️ HELPERS ------------------------------------------------------------------------------- \\
// 🪄 MUTATORS ------------------------------------------------------------------------------ \\
}
