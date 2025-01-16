import 'package:{{packageName.snakeCase()}}/core/abstracts/view_arguments.dart';

class {{viewName.pascalCase()}}Arguments extends ViewArguments {
{{viewName.pascalCase()}}Arguments({required this.id});

  final String? id;

  @override
  Map<String, dynamic> toMap() => {
      if (id != null) kKeys.id: id,
    };

  factory {{viewName.pascalCase()}}Arguments.fromMap(Map<String, dynamic> map) => {{viewName.pascalCase()}}Arguments(
        id: map[kKeys.id] as String?,
      );
}
