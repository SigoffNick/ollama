// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ollama_completion_chunk_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OllamaCompletionChunkModel _$OllamaCompletionChunkModelFromJson(
        Map<String, dynamic> json) =>
    _OllamaCompletionChunkModel(
      model: json['model'] as String,
      createdAt: json['created_at'] as String,
      response: json['response'] as String?,
      done: json['done'] as bool?,
    );

Map<String, dynamic> _$OllamaCompletionChunkModelToJson(
        _OllamaCompletionChunkModel instance) =>
    <String, dynamic>{
      'model': instance.model,
      'created_at': instance.createdAt,
      'response': instance.response,
      'done': instance.done,
    };
