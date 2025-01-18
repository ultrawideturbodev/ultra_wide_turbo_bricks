class {{collectionName.pascalCase()}}Api extends {{projectKey.pascalCase()}}Api<{{collectionObjectName.pascalCase()}}Dto> {
  {{collectionName.pascalCase()}}Api()
      : super(
          firestoreCollection: FirestoreCollection.{{collectionName.camelCase()}},
          path: (firestoreCollection) => firestoreCollection.path(),
        );
  // 📍 LOCATOR ------------------------------------------------------------------------------- \\

  static {{collectionName.pascalCase()}}Api get locate => GetIt.I.get();
  static void registerFactory() => GetIt.I.registerFactory({{collectionName.pascalCase()}}Api.new);

// 🧩 DEPENDENCIES -------------------------------------------------------------------------- \\
// 🎬 INIT & DISPOSE ------------------------------------------------------------------------ \\
// 👂 LISTENERS ----------------------------------------------------------------------------- \\
// ⚡️ OVERRIDES ----------------------------------------------------------------------------- \\
// 🎩 STATE --------------------------------------------------------------------------------- \\
// 🛠 UTIL ---------------------------------------------------------------------------------- \\
// 🧲 FETCHERS ------------------------------------------------------------------------------ \\
// 🏗️ HELPERS ------------------------------------------------------------------------------- \\
// 🪄 MUTATORS ------------------------------------------------------------------------------ \\
}
