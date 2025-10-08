// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ollama_chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OllamaChatMessageModel _$OllamaChatMessageModelFromJson(
        Map<String, dynamic> json) =>
    _OllamaChatMessageModel(
      role: json['role'] as String,
      content: json['content'] as String,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$OllamaChatMessageModelToJson(
        _OllamaChatMessageModel instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
      'images': instance.images,
    };
