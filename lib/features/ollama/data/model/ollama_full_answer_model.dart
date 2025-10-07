import 'package:freezed_annotation/freezed_annotation.dart';

part 'ollama_full_answer_model.freezed.dart';
part 'ollama_full_answer_model.g.dart';

@freezed
abstract class OllamaFullAnswerModel with _$OllamaFullAnswerModel {
  factory OllamaFullAnswerModel({
    required String model,
    @JsonKey(name: 'created_at') required String createdAt,
    required String response,
    required bool done,
    @JsonKey(name: 'done_reason') String? doneReason,
    List<dynamic>? context,
    @JsonKey(name: 'total_duration') int? totalDuration,
    @JsonKey(name: 'load_duration') int? loadDuration,
    @JsonKey(name: 'prompt_eval_count') int? promptEvalCount,
    @JsonKey(name: 'prompt_eval_duration') int? promptEvalDuration,
    @JsonKey(name: 'eval_count') int? evalCount,
    @JsonKey(name: 'eval_duration') int? evalDuration,
  }) = _OllamaFullAnswerModel;

  factory OllamaFullAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$OllamaFullAnswerModelFromJson(json);
}
