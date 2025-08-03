import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/ollama/ollama_export.dart';
import '../../../../bloc/ollama_bloc/ollama_bloc.dart';
import '../../common_containers/common_containers_export.dart';
import 'question_card_widget.dart';

class QuestionsResponseTabWidget extends StatelessWidget {
  const QuestionsResponseTabWidget({super.key});

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
                    message: 'No notes found',
                  )
                : ListView.builder(
                    itemCount: ollamaResponse.problems.length,
                    itemBuilder: (BuildContext context, int index) {
                      final NoteModel question =
                          ollamaResponse.questions[index];

                      return QuestionCardWidget(
                        index: index,
                        problem: question,
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
