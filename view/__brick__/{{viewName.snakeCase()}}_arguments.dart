import 'package:{{packageName.snakeCase()}}/core/abstracts/view_arguments.dart';
import 'package:{{packageName.snakeCase()}}/core/constants/k_keys.dart';

class {{viewName.pascalCase()}}Arguments extends ViewArguments {
{{viewName.pascalCase()}}Arguments({required this.id});

  final String? id;

  @override
  Map<String, dynamic> toMap() => {
      kKeysId: id,
    };

  factory {{viewName.pascalCase()}}Arguments.fromMap(Map<String, dynamic> map) => {{viewName.pascalCase()}}Arguments(
        id: map[kKeysId] as String,
      );
}
