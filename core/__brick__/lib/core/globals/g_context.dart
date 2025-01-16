import 'package:flutter/cupertino.dart';
import 'package:{{packageName.snakeCase()}}/core/extensions/context_extension.dart';
import 'package:{{packageName.snakeCase()}}/core/routing/base_router.dart';

double? get gTopSafeArea => gContext?.sizes.topSafeArea;
double? get gBottomSafeArea => gContext?.sizes.bottomSafeArea;

BuildContext? get gContext {
  final state = BaseRouter.rootNavigatorKey.currentState;
  if (state == null) {
    return null;
  }
  return DisposableBuildContext<State<StatefulWidget>>(BaseRouter.rootNavigatorKey.currentState!)
      .context;
}
