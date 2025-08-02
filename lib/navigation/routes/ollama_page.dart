import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';
import '../../di/app_di.dart';

import '../../features/ollama/domain/use_case/export_use_cases.dart';
import '../../features/ollama/presentation/bloc/ollama_response_bloc/ollama_response_bloc.dart';
import '../../features/ollama/presentation/bloc/text_area_bloc/text_area_bloc.dart';
import '../../features/ollama/presentation/ui/ollama_screen.dart';

@RoutePage()
class OllamaPage extends StatelessWidget implements AutoRouteWrapper {
  const OllamaPage({
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: <SingleChildWidget>[
        BlocProvider<OllamaResponseBloc>(
          create: (_) => OllamaResponseBloc(
            generateAnswerAsString: appLocator<GenerateAnswerAsStringUseCase>(),
          ),
        ),
        BlocProvider<TextAreaBloc>(
          create: (_) => TextAreaBloc(
            generateAnswerAsString: appLocator<GenerateAnswerAsStringUseCase>(),
          ),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const OllamaScreen();
  }
}
