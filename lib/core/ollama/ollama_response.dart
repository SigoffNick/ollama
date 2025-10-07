import 'dart:convert';

import '../../features/ollama/data/model/export_models.dart';
import '../extension/extension_export.dart';

class OllamaResponse {
  final String aiVariant;
  final List<ProblemModel> problems;
  final List<NoteModel> questions;
  final List<OperationModel> operations;
  final String thinking;

  OllamaResponse({
    required this.aiVariant,
    required this.problems,
    required this.questions,
    required this.operations,
    required this.thinking,
  });

  factory OllamaResponse.fromString(String response) {
    final String json = response.extractJson();

    Map<String, dynamic> jsonMap;
    try {
      jsonMap = jsonDecode(json);
    } catch (e) {
      throw FormatException('Invalid JSON format: $json', e);
    }

    try {
      return OllamaResponse(
        aiVariant: jsonMap['aiVariant'] ?? '',
        problems: (jsonMap['problems'] as List<dynamic>).map((dynamic note) {
          return ProblemModel.fromJson(note as Map<String, dynamic>);
        }).toList(),
        questions: (jsonMap['notes'] as List<dynamic>).map((dynamic note) {
          return NoteModel.fromJson(note as Map<String, dynamic>);
        }).toList(),
        operations:
            (jsonMap['operations'] as List<dynamic>).map((dynamic note) {
          return OperationModel.fromJson(note as Map<String, dynamic>);
        }).toList(),
        thinking: '',
      );
    } catch (e) {
      throw FormatException(
        'Error parsing OllamaResponse from JSON: $json',
        e,
      );
    }
  }
}
