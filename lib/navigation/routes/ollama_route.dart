import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ollama/features/ollama/presentation/bloc/ollama_bloc.dart';
import 'package:ollama/features/ollama/presentation/ui/ollama_screen.dart';

@RoutePage()
class OllamaPage extends StatelessWidget implements AutoRouteWrapper {
  const OllamaPage({
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<OllamaBloc>(
      create: (_) => OllamaBloc(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return OllamaScreen();
  }
}
