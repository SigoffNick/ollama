// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoteModel _$NoteModelFromJson(Map<String, dynamic> json) => _NoteModel(
      operationIndex: (json['operationIndex'] as num?)?.toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$NoteModelToJson(_NoteModel instance) =>
    <String, dynamic>{
      'operationIndex': instance.operationIndex,
      'description': instance.description,
    };
