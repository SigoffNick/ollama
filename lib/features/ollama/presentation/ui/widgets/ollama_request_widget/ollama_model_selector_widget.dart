import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/enum/export_enums.dart';
import '../../../bloc/ollama_bloc.dart';

class OllamaModelSelectorWidget extends StatelessWidget {
  const OllamaModelSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OllamaBloc, OllamaState>(
      builder: (BuildContext context, OllamaState state) {
        return DropdownButton<OllamaModel>(
          value: state is OllamaSuccess ? state.model : null,
          items: OllamaModel.values.map((OllamaModel model) {
            return DropdownMenuItem<OllamaModel>(
              value: model,
              child: Text(model.toString()),
            );
          }).toList(),
          onChanged: (OllamaModel? model) => context.read<OllamaBloc>().add(
                SelectModelEvent(model: model),
              ),
          isExpanded: true,
        );
      },
    );
  }
}
