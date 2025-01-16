import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:loglytics/loglytics.dart';
import 'package:{{packageName.snakeCase()}}/core/routing/core_router.dart';

void gPop<T extends Object?>(BuildContext context, [T? result]) {
  try {
    context.pop(result);
  } catch (error, stackTrace) {
    Log(location: 'gPop').error(
      '$error caught while popping',
      error: error,
      stackTrace: stackTrace,
    );
    CoreRouter.locate.goOopsView();
  }
}
