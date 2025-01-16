import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:{{packageName.snakeCase()}}/core/enums/firestore_collection.dart';
import 'package:turbo_firestore_api/apis/turbo_firestore_api.dart';

export 'package:turbo_firestore_api/apis/turbo_firestore_api.dart';

abstract class {{projectKey.pascalCase()}}Api<T extends Object> extends TurboFirestoreApi<T> {
  {{projectKey.pascalCase()}}Api({
    required FirestoreCollection firestoreCollection,
    String Function(FirestoreCollection firestoreCollection)? path,
  }) : super(
    collectionPath: () => path?.call(firestoreCollection) ?? firestoreCollection.path(),
    documentReferenceFieldName: firestoreCollection.documentReferenceFieldName,
    firebaseFirestore: FirebaseFirestore.instance,
    fromJson: firestoreCollection.fromJson<T>(),
    isCollectionGroup: firestoreCollection.isCollectionGroup,
    hideSensitiveData: !kDebugMode,
    toJson: firestoreCollection.toJson<T>(),
    tryAddLocalDocumentReference: firestoreCollection.tryAddLocalDocumentReference,
    tryAddLocalId: true,
  );
}
