import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_json_viewer/flutter_json_viewer.dart';

import '../../../../../../../core/ollama/ollama_export.dart';
import '../../../../../data/model/export_models.dart';
import '../../../../bloc/ollama_bloc/ollama_bloc.dart';
import '../../common_containers/common_containers_export.dart';

class ProblemsResponseTabWidget extends StatelessWidget {
  const ProblemsResponseTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<OllamaBloc, OllamaState>(
      builder: (
        BuildContext context,
        OllamaState state,
      ) {
        return switch (state) {
          OllamaInitial() => const InitialContainerWidget(),
          OllamaLoading() => const LoadingContainerWidget(),
          OllamaLoaded(ollamaResponse: final OllamaResponse ollamaResponse) =>
            ollamaResponse.problems.isEmpty
                ? const NoDataContainerWidget(
                    message: 'No problems found',
                  )
                : ListView.builder(
                    itemCount: ollamaResponse.problems.length,
                    itemBuilder: (BuildContext context, int index) {
                      final ProblemModel problem =
                          ollamaResponse.problems[index];

                      return Card(
                        margin: const EdgeInsets.only(bottom: 12.0),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.warning,
                                    color: colorScheme.error,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Problem ${index + 1}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              JsonViewer(
                                problem.toJson(),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          OllamaError(errorMessage: final String errorMessage) =>
            ErrorContainerWidget(
              error: errorMessage,
            ),
        };
      },
    );
  }
}
