class {{collectionName.pascalCase()}}Service extends TurboDocumentService<{{dtoName.pascalCase()}}Dto, {{collectionName.pascalCase()}}Api> {
  {{collectionName.pascalCase()}}Service() : super(api: {{collectionName.pascalCase()}}Api.locate);

  // 📍 LOCATOR ------------------------------------------------------------------------------- \\

  static {{collectionName.pascalCase()}}Service get locate => GetIt.I.get();
  static void registerLazySingleton() => GetIt.I.registerLazySingleton({{collectionName.pascalCase()}}Service.new);

  // 🧩 DEPENDENCIES -------------------------------------------------------------------------- \\
  // 🎬 INIT & DISPOSE ------------------------------------------------------------------------ \\
  // 👂 LISTENERS ----------------------------------------------------------------------------- \\
  // ⚡️ OVERRIDES ----------------------------------------------------------------------------- \\

  @override
  FutureOr<Stream<List<{{dtoName.pascalCase()}}Dto>>> Function(User user) get stream => throw UnimplementedError();

// 🎩 STATE --------------------------------------------------------------------------------- \\
// 🛠 UTIL ---------------------------------------------------------------------------------- \\
// 🧲 FETCHERS ------------------------------------------------------------------------------ \\
// 🏗️ HELPERS ------------------------------------------------------------------------------- \\
// 🪄 MUTATORS ------------------------------------------------------------------------------ \\
}
