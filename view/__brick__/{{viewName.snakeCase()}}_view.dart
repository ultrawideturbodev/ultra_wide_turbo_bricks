import 'package:flutter/material.dart';
import 'package:{{packageName.snakeCase()}}/features/{{featureName.snakeCase()}}/views/{{viewName.snakeCase()}}_arguments.dart';
import 'package:{{packageName.snakeCase()}}/features/{{featureName.snakeCase()}}/views/{{viewName.snakeCase()}}_origin.dart';
import 'package:{{packageName.snakeCase()}}/features/{{featureName.snakeCase()}}/views/{{viewName.snakeCase()}}_view_model.dart';
import 'package:veto/data/models/base_view_model.dart';

class {{viewName.pascalCase()}}View extends StatelessWidget {
  const {{viewName.pascalCase()}}View({
    super.key,
    required this.arguments,
    required this.origin,
  });

  final {{viewName.pascalCase()}}Arguments arguments;
  final {{viewName.pascalCase()}}Origin origin;

  static const String path = '{{viewName.paramCase()}}';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<{{viewName.pascalCase()}}ViewModel>(
      isReactive: false,
      argumentBuilder: () => OriginArguments(data: arguments, origin: origin),
      builder: (context, model, isInitialised, child) {
        if (!isInitialised) return kWidgetsNothing;
          return {{projectKey.pascalCase()}}Scaffold(
            appBar: {{projectKey.pascalCase()}}AppBar(
            context: context,
            header: const EmojiHeader.scaffoldTitle(
              emoji: Emoji.unicorn,
              title: '{{viewName.pascalCase()}}',
            ),
          ),
          body: const {{projectKey.pascalCase()}}ScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [],
            ),
          ),
        );
      },
      viewModelBuilder: () => {{viewName.pascalCase()}}ViewModel.locate,
    );
  }
}
