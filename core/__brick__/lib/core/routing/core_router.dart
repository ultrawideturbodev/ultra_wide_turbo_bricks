import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:{{packageName.snakeCase()}}/core/abstracts/base_navigation.dart';
import 'package:{{packageName.snakeCase()}}/core/enums/navigation_tab.dart';
import 'package:{{packageName.snakeCase()}}/core/extensions/string_extension.dart';

class CoreRouter extends BaseNavigation {
  // 📍 LOCATOR ------------------------------------------------------------------------------- \\

  static CoreRouter get locate => GetIt.I.get();
  static void registerFactory() => GetIt.I.registerFactory(CoreRouter.new);

  // 🧩 DEPENDENCIES -------------------------------------------------------------------------- \\
  // 🎬 INIT & DISPOSE ------------------------------------------------------------------------ \\
  // 👂 LISTENERS ----------------------------------------------------------------------------- \\
  // ⚡️ OVERRIDES ----------------------------------------------------------------------------- \\

  @override
  NavigationTab? get navigationTab => null;

  @override
  String get root => '';

  // 🎩 STATE --------------------------------------------------------------------------------- \\
  // 🛠 UTIL ---------------------------------------------------------------------------------- \\
  // 🧲 FETCHERS ------------------------------------------------------------------------------ \\
  // 🏗️ HELPERS ------------------------------------------------------------------------------- \\
  // 🪄 MUTATORS ------------------------------------------------------------------------------ \\
}
