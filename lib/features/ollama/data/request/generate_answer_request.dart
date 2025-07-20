import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_answer_request.freezed.dart';

part 'generate_answer_request.g.dart';

@freezed
abstract class GenerateAnswerRequest with _$GenerateAnswerRequest {
  const factory GenerateAnswerRequest({
    required String prompt,
    required String model,
  }) = _GenerateAnswerRequest;

  factory GenerateAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$GenerateAnswerRequestFromJson(json);
}
