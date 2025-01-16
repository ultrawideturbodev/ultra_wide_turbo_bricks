import 'package:{{packageName.snakeCase()}}/core/enums/environment.dart';
import 'package:{{packageName.snakeCase()}}/core/enums/supported_platform.dart';

SupportedPlatform get gPlatform => SupportedPlatform.current;
EnvironmentType get gEnvironment => Environment.current;
bool get gIsEmulators => Environment.isEmulators;
bool get gIsProd => Environment.isProd;
