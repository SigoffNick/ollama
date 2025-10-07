import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation_model.freezed.dart';

part 'operation_model.g.dart';

@freezed
abstract class OperationModel with _$OperationModel {
  const factory OperationModel({
    String? name,
    String? type,
    @JsonKey(name: 'metod') String? method,
    String? path,
    String? variable,
    String? where,
    String? errorVariable,
    String? script,
  }) = _OperationModel;

  factory OperationModel.fromJson(Map<String, dynamic> json) =>
      _$OperationModelFromJson(json);
}
