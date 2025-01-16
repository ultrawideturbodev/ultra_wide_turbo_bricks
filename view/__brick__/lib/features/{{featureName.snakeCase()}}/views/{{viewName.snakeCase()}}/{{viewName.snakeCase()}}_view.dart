import 'package:flutter/material.dart';
import 'package:{{packageName.snakeCase()}}/core/constants/k_widgets.dart';
import 'package:{{packageName.snakeCase()}}/core/views/startup/startup_view_model.dart';
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
      argumentBuilder: () => arguments,
      builder: (context, model, isInitialised, child) {
        if (!isInitialised) return kWidgetsNothing;
          return const {{projectKey.pascalCase()}}Scaffold(
            appBar: {{projectKey.pascalCase()}}AppBar(
            context: context,
            header: EmojiHeader(
              emoji: Emoji.unicorn,
              title: '{{viewName.pascalCase()}}',
            ),
          ),
          body: {{projectKey.pascalCase()}}ScrollView(
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
