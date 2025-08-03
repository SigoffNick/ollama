import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/ollama/ollama_export.dart';
import '../../../../../data/model/export_models.dart';
import '../../../../bloc/ollama_bloc/ollama_bloc.dart';
import '../../common_containers/common_containers_export.dart';
import 'problem_card_widget.dart';

class ProblemsResponseTabWidget extends StatelessWidget {
  const ProblemsResponseTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
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

                      return ProblemCardWidget(
                        index: index,
                        problem: problem,
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
