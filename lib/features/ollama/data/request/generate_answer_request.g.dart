// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_answer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenerateAnswerRequest _$GenerateAnswerRequestFromJson(
        Map<String, dynamic> json) =>
    _GenerateAnswerRequest(
      prompt: json['prompt'] as String,
      model: json['model'] as String,
      stream: json['stream'] as bool? ?? true,
    );

Map<String, dynamic> _$GenerateAnswerRequestToJson(
        _GenerateAnswerRequest instance) =>
    <String, dynamic>{
      'prompt': instance.prompt,
      'model': instance.model,
      'stream': instance.stream,
    };
