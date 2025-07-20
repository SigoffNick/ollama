import 'package:freezed_annotation/freezed_annotation.dart';

import 'ollama_chat_message_model.dart';

part 'ollama_completion_chunk_model.freezed.dart';

part 'ollama_completion_chunk_model.g.dart';

@freezed
abstract class OllamaCompletionChunkModel with _$OllamaCompletionChunkModel {
  const factory OllamaCompletionChunkModel({
    required String model,
    required DateTime createdAt,
    OllamaChatMessageModel? message,
  }) = _OllamaCompletionChunkModel;

  factory OllamaCompletionChunkModel.fromJson(Map<String, dynamic> json) =>
      _$OllamaCompletionChunkModelFromJson(json);
}
