import 'package:{{packageName.snakeCase()}}/core/dtos/extra_arguments.dart';

abstract class ViewArguments {
  Map<String, dynamic> toMap();
}

extension ViewArgumentsListExtension on List<ViewArguments> {
  ExtraArguments get toExtraArguments {
    final extraArguments = <String, dynamic>{};
    for (final viewArguments in this) {
      extraArguments.addAll(viewArguments.toMap());
    }
    return ExtraArguments.fromMap(extraArguments);
  }
}
