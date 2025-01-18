import 'package:get_it/get_it.dart';
import 'package:loglytics/loglytics.dart';
import 'package:{{packageName.snakeCase()}}/core/models/origin_arguments.dart';
import 'package:{{packageName.snakeCase()}}/features/fea/views/{{viewName.snakeCase()}}_arguments.dart';
import 'package:{{packageName.snakeCase()}}/features/{{featureName.snakeCase()}}/views/{{viewName.snakeCase()}}_origin.dart';
import 'package:veto/data/models/base_view_model.dart';

class {{viewName.pascalCase()}}ViewModel extends BaseViewModel<OriginArguments<{{viewName.pascalCase()}}Origin, {{viewName.pascalCase()}}Arguments>> with Loglytics {
  {{viewName.pascalCase()}}ViewModel._();
  
  // 📍 LOCATOR ------------------------------------------------------------------------------- \\

  static {{viewName.pascalCase()}}ViewModel get locate => GetIt.I.get();
  static void registerFactory() => GetIt.I.registerFactory({{viewName.pascalCase()}}ViewModel._);
  
  // 🧩 DEPENDENCIES -------------------------------------------------------------------------- \\
  // 🎬 INIT & DISPOSE ------------------------------------------------------------------------ \\

  @override
  Future<void> initialise() async {
    super.initialise();
  }

  @override
  Future<void> dispose() async {
    super.dispose();
  }
  
  // 👂 LISTENERS ----------------------------------------------------------------------------- \\
  // ⚡️ OVERRIDES ----------------------------------------------------------------------------- \\
  // 🎩 STATE --------------------------------------------------------------------------------- \\
  // 🛠 UTIL ---------------------------------------------------------------------------------- \\
  // 🧲 FETCHERS ------------------------------------------------------------------------------ \\
  
  {{viewName.pascalCase()}}Origin get origin => arguments.origin;
  {{viewName.pascalCase()}}Arguments get args => arguments.data;
  
  // 🏗 HELPERS ------------------------------------------------------------------------------- \\
  // 🪄 MUTATORS ------------------------------------------------------------------------------ \\
}
