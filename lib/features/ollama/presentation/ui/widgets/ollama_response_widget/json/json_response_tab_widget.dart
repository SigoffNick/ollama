import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/ollama/ollama_export.dart';
import '../../../../../data/model/export_models.dart';
import '../../../../bloc/ollama_bloc/ollama_bloc.dart';
import '../../common_containers/common_containers_export.dart';
import 'operation_widget.dart';

class JsonResponseTabWidget extends StatelessWidget {
  const JsonResponseTabWidget({super.key});

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
            ollamaResponse.operations.isEmpty
                ? const NoDataContainerWidget(
                    message: 'No operations found',
                  )
                : ListView.builder(
                    itemCount: ollamaResponse.operations.length,
                    itemBuilder: (BuildContext context, int index) {
                      final OperationModel operation =
                          ollamaResponse.operations[index];

                      return OperationWidget(
                        operation: operation,
                        index: index,
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
