import 'package:freezed_annotation/freezed_annotation.dart';

part 'ollama_chat_message_model.freezed.dart';

part 'ollama_chat_message_model.g.dart';

@freezed
abstract class OllamaChatMessageModel with _$OllamaChatMessageModel {
  const factory OllamaChatMessageModel({
    required String role,
    required String content,
    List<String>? images,
  }) = _OllamaChatMessageModel;

  factory OllamaChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$OllamaChatMessageModelFromJson(json);
}
