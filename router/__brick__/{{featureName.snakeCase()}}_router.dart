import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:{{packageName.snakeCase()}}/core/abstracts/base_navigation.dart';
import 'package:{{packageName.snakeCase()}}/core/enums/navigation_tab.dart';

class {{featureName.pascalCase()}}Router extends BaseNavigation {
  // 📍 LOCATOR ------------------------------------------------------------------------------- \\

  static {{featureName.pascalCase()}}Router get locate => GetIt.I.get();
  static void registerFactory() => GetIt.I.registerFactory({{featureName.pascalCase()}}Router.new);

  // 🧩 DEPENDENCIES -------------------------------------------------------------------------- \\
  // 🎬 INIT & DISPOSE ------------------------------------------------------------------------ \\
  // 👂 LISTENERS ----------------------------------------------------------------------------- \\
  // ⚡️ OVERRIDES ----------------------------------------------------------------------------- \\

  @override
  NavigationTab get navigationTab => ;

  @override
  String get root => ;

  // 🎩 STATE --------------------------------------------------------------------------------- \\
  // 🛠 UTIL ---------------------------------------------------------------------------------- \\
  // 🧲 FETCHERS ------------------------------------------------------------------------------ \\
  // 🏗️ HELPERS ------------------------------------------------------------------------------- \\
  // 🪄 MUTATORS ------------------------------------------------------------------------------ \\

  void go{{featureName.pascalCase()}}View({
    StatefulNavigationShell? statefulNavigationShell,
    bool shouldLaunchInboxPopup = false,
  }) {
    if (statefulNavigationShell != null) {
      goBranch(
        statefulNavigationShell: statefulNavigationShell,
      );
      if (kIsWeb) {
        // bug
        goBranch(
          statefulNavigationShell: statefulNavigationShell,
        );
      }
    } else {
      go(
        location: root,
        extra: const [],
      );
    }
  }
}
