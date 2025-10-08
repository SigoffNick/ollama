// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OperationModel _$OperationModelFromJson(Map<String, dynamic> json) =>
    _OperationModel(
      name: json['name'] as String?,
      type: json['type'] as String?,
      method: json['metod'] as String?,
      path: json['path'] as String?,
      variable: json['variable'] as String?,
      where: json['where'] as String?,
      errorVariable: json['errorVariable'] as String?,
      script: json['script'] as String?,
    );

Map<String, dynamic> _$OperationModelToJson(_OperationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'metod': instance.method,
      'path': instance.path,
      'variable': instance.variable,
      'where': instance.where,
      'errorVariable': instance.errorVariable,
      'script': instance.script,
    };
