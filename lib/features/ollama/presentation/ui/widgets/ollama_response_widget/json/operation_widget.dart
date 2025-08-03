import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_json_viewer/flutter_json_viewer.dart';

import '../../../../../data/model/export_models.dart';
import '../../../../bloc/ollama_bloc/ollama_bloc.dart';

class OperationWidget extends StatelessWidget {
  final OperationModel operation;
  final int index;

  const OperationWidget({
    super.key,
    required this.operation,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: () => context.read<OllamaBloc>().add(
            CopyContentEvent(content: operation.toJson().toString()),
          ),
      child: Card(
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
                    Icons.account_tree,
                    color: colorScheme.primary,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Operation ${index + 1}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              JsonViewer(
                operation.toJson(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
