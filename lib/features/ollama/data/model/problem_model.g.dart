// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProblemModel _$ProblemModelFromJson(Map<String, dynamic> json) =>
    _ProblemModel(
      operationIndex: (json['operationIndex'] as num?)?.toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ProblemModelToJson(_ProblemModel instance) =>
    <String, dynamic>{
      'operationIndex': instance.operationIndex,
      'description': instance.description,
    };
