import 'package:get_it/get_it.dart';
import 'package:loglytics/loglytics.dart';
import 'package:veto/data/models/base_view_model.dart';

class StartupViewModel extends BaseViewModel with Loglytics {
  StartupViewModel();

  // 📍 LOCATOR ------------------------------------------------------------------------------- \\

  static StartupViewModel get locate => GetIt.I.get();
  static void registerFactory() => GetIt.I.registerFactory(() => StartupViewModel());

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
  // 🏗️ HELPERS ------------------------------------------------------------------------------- \\
  // 🪄 MUTATORS ------------------------------------------------------------------------------ \\
}
