import 'package:freezed_annotation/freezed_annotation.dart';

part 'ollama_completion_chunk_model.freezed.dart';

part 'ollama_completion_chunk_model.g.dart';

@freezed
abstract class OllamaCompletionChunkModel with _$OllamaCompletionChunkModel {
  const factory OllamaCompletionChunkModel({
    required String model,
    @JsonKey(name: 'created_at')
    required String createdAt,
    String? response,
    bool? done,
  }) = _OllamaCompletionChunkModel;

  factory OllamaCompletionChunkModel.fromJson(Map<String, dynamic> json) =>
      _$OllamaCompletionChunkModelFromJson(json);
}
