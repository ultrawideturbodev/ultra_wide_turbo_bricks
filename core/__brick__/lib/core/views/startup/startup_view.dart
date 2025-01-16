import 'package:flutter/material.dart';
import 'package:roomy_mobile/core/constants/k_widgets.dart';
import 'package:roomy_mobile/core/views/startup/startup_view_model.dart';
import 'package:roomy_mobile/core/widgets/{{projectKey.paramCase()}}_scaffold.dart';
import 'package:veto/data/models/base_view_model.dart';

class StartupView extends StatelessWidget {
  const StartupView({
    super.key,
  });

  static const String path = 'startup';

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>(
      builder: (context, model, isInitialised, child) {
        if (!isInitialised) return kWidgetsNothing;
        return const {{projectKey.pascalCase()}}Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [],
            ),
          ),
        );
      },
      viewModelBuilder: () => StartupViewModel.locate,
    );
  }
}
