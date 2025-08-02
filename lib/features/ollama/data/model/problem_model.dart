import 'package:freezed_annotation/freezed_annotation.dart';

part 'problem_model.freezed.dart';

part 'problem_model.g.dart';

@freezed
abstract class ProblemModel with _$ProblemModel {
  const factory ProblemModel({
    int? operationIndex,
    String? description,
  }) = _ProblemModel;

  factory ProblemModel.fromJson(Map<String, dynamic> json) =>
      _$ProblemModelFromJson(json);
}
