import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../di/app_di.dart';

import '../../features/ollama/domain/use_case/export_use_cases.dart';
import '../../features/ollama/presentation/bloc/ollama_bloc.dart';
import '../../features/ollama/presentation/ui/ollama_screen.dart';

@RoutePage()
class OllamaPage extends StatelessWidget implements AutoRouteWrapper {
  const OllamaPage({
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<OllamaBloc>(
      create: (_) => OllamaBloc(
        generateAnswerUseCase: appLocator<GenerateAnswerUseCase>(),
      ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const OllamaScreen();
  }
}
