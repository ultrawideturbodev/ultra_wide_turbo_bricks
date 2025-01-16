import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

abstract class Environment {
  static String? currentVersion;

  static const String _emulators = 'emulators';
  static const String _prod = 'prod';

  static const argumentKey = 'env';

  static EnvironmentType? _environmentOverride;
  static void environmentOverride({required EnvironmentType environmentType}) =>
      _environmentOverride = environmentType;

  static EnvironmentType get current {
    if (_environmentOverride == null) {
      switch (const String.fromEnvironment(
        Environment.argumentKey,
        defaultValue: _prod,
      )) {
        case _emulators:
          return EnvironmentType.emulators;
        case _prod:
        default:
          return EnvironmentType.prod;
      }
    }
    return _environmentOverride!;
  }

  static bool get isEmulators => current == EnvironmentType.emulators;
  static bool get isProd => current == EnvironmentType.prod;
}

enum EnvironmentType {
  emulators,
  prod;

  String get trailingCloudFunctionId {
    switch (this) {
      case EnvironmentType.emulators:
        return '';
      case EnvironmentType.prod:
        return '';
    }
  }

  FirebaseOptions get firebaseOptions {
    switch (this) {
      case EnvironmentType.emulators:
      case EnvironmentType.dev:
      case EnvironmentType.testDev:
      case EnvironmentType.prod:
        return _DefaultFirebaseOptions.currentPlatform;
    }
  }
}

// prod
class _DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: '',
    appId: '',
    messagingSenderId '',
    projectId: '',
    authDomain: '',
    storageBucket: '',
    measurementId: '',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: '',
    appId: '',
    messagingSenderId: ,
    projectId: '',
    storageBucket: '',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: '',
    appId: '',
    messagingSenderId: '',
    projectId: '',
    storageBucket: '',
    iosBundleId: '',
  );
}
