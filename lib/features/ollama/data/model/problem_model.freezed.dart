// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'problem_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProblemModel {
  int? get operationIndex;
  String? get description;

  /// Create a copy of ProblemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProblemModelCopyWith<ProblemModel> get copyWith =>
      _$ProblemModelCopyWithImpl<ProblemModel>(
          this as ProblemModel, _$identity);

  /// Serializes this ProblemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProblemModel &&
            (identical(other.operationIndex, operationIndex) ||
                other.operationIndex == operationIndex) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, operationIndex, description);

  @override
  String toString() {
    return 'ProblemModel(operationIndex: $operationIndex, description: $description)';
  }
}

/// @nodoc
abstract mixin class $ProblemModelCopyWith<$Res> {
  factory $ProblemModelCopyWith(
          ProblemModel value, $Res Function(ProblemModel) _then) =
      _$ProblemModelCopyWithImpl;
  @useResult
  $Res call({int? operationIndex, String? description});
}

/// @nodoc
class _$ProblemModelCopyWithImpl<$Res> implements $ProblemModelCopyWith<$Res> {
  _$ProblemModelCopyWithImpl(this._self, this._then);

  final ProblemModel _self;
  final $Res Function(ProblemModel) _then;

  /// Create a copy of ProblemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operationIndex = freezed,
    Object? description = freezed,
  }) {
    return _then(_self.copyWith(
      operationIndex: freezed == operationIndex
          ? _self.operationIndex
          : operationIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProblemModel].
extension ProblemModelPatterns on ProblemModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProblemModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProblemModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProblemModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProblemModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProblemModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProblemModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? operationIndex, String? description)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProblemModel() when $default != null:
        return $default(_that.operationIndex, _that.description);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? operationIndex, String? description) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProblemModel():
        return $default(_that.operationIndex, _that.description);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? operationIndex, String? description)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProblemModel() when $default != null:
        return $default(_that.operationIndex, _that.description);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProblemModel implements ProblemModel {
  const _ProblemModel({this.operationIndex, this.description});
  factory _ProblemModel.fromJson(Map<String, dynamic> json) =>
      _$ProblemModelFromJson(json);

  @override
  final int? operationIndex;
  @override
  final String? description;

  /// Create a copy of ProblemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProblemModelCopyWith<_ProblemModel> get copyWith =>
      __$ProblemModelCopyWithImpl<_ProblemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProblemModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProblemModel &&
            (identical(other.operationIndex, operationIndex) ||
                other.operationIndex == operationIndex) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, operationIndex, description);

  @override
  String toString() {
    return 'ProblemModel(operationIndex: $operationIndex, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$ProblemModelCopyWith<$Res>
    implements $ProblemModelCopyWith<$Res> {
  factory _$ProblemModelCopyWith(
          _ProblemModel value, $Res Function(_ProblemModel) _then) =
      __$ProblemModelCopyWithImpl;
  @override
  @useResult
  $Res call({int? operationIndex, String? description});
}

/// @nodoc
class __$ProblemModelCopyWithImpl<$Res>
    implements _$ProblemModelCopyWith<$Res> {
  __$ProblemModelCopyWithImpl(this._self, this._then);

  final _ProblemModel _self;
  final $Res Function(_ProblemModel) _then;

  /// Create a copy of ProblemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? operationIndex = freezed,
    Object? description = freezed,
  }) {
    return _then(_ProblemModel(
      operationIndex: freezed == operationIndex
          ? _self.operationIndex
          : operationIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
