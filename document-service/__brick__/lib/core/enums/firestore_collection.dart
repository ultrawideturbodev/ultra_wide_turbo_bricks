enum FirestoreCollection {
  {{collectionName.camelCase()}},
  ;

  Map<String, dynamic> Function(T value)? toJson<T>() => switch (this) {
        FirestoreCollection.{{collectionName.camelCase()}} => {{collectionObjectName.pascalCase()}}Dto.toJsonFactory,
      } as Map<String, dynamic> Function(T value)?;

  T Function(Map<String, dynamic> json)? fromJson<T>() => switch (this) {
        FirestoreCollection.{{collectionName.camelCase()}} => {{collectionObjectName.pascalCase()}}Dto.fromJsonFactory,
      } as T Function(Map<String, dynamic> json)?;

  String get apiName {
    switch (this) {
      case FirestoreCollection.{{collectionName.camelCase()}}:
        return '{{collectionName.pascalCase()}}Api';
    }
  }

  String get collectionName {
    switch (this) {
      case FirestoreCollection.{{collectionName.camelCase()}}:
        return '{{collectionName.camelCase()}}';
    }
  }

  String path() {
    switch (this) {
      case FirestoreCollection.{{collectionName.camelCase()}}:
        return collectionName;
    }
  }
}
