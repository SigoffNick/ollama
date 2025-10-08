// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OperationModel {
  String? get name;
  String? get type;
  String? get metod;
  String? get path;
  String? get variable;
  String? get where;
  String? get errorVariable;
  String? get script;

  /// Create a copy of OperationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OperationModelCopyWith<OperationModel> get copyWith =>
      _$OperationModelCopyWithImpl<OperationModel>(
          this as OperationModel, _$identity);

  /// Serializes this OperationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OperationModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.metod, metod) || other.metod == metod) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.variable, variable) ||
                other.variable == variable) &&
            (identical(other.where, where) || other.where == where) &&
            (identical(other.errorVariable, errorVariable) ||
                other.errorVariable == errorVariable) &&
            (identical(other.script, script) || other.script == script));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, metod, path,
      variable, where, errorVariable, script);

  @override
  String toString() {
    return 'OperationModel(name: $name, type: $type, metod: $metod, path: $path, variable: $variable, where: $where, errorVariable: $errorVariable, script: $script)';
  }
}

/// @nodoc
abstract mixin class $OperationModelCopyWith<$Res> {
  factory $OperationModelCopyWith(
          OperationModel value, $Res Function(OperationModel) _then) =
      _$OperationModelCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      String? type,
      String? metod,
      String? path,
      String? variable,
      String? where,
      String? errorVariable,
      String? script});
}

/// @nodoc
class _$OperationModelCopyWithImpl<$Res>
    implements $OperationModelCopyWith<$Res> {
  _$OperationModelCopyWithImpl(this._self, this._then);

  final OperationModel _self;
  final $Res Function(OperationModel) _then;

  /// Create a copy of OperationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? metod = freezed,
    Object? path = freezed,
    Object? variable = freezed,
    Object? where = freezed,
    Object? errorVariable = freezed,
    Object? script = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      metod: freezed == metod
          ? _self.metod
          : metod // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      variable: freezed == variable
          ? _self.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as String?,
      where: freezed == where
          ? _self.where
          : where // ignore: cast_nullable_to_non_nullable
              as String?,
      errorVariable: freezed == errorVariable
          ? _self.errorVariable
          : errorVariable // ignore: cast_nullable_to_non_nullable
              as String?,
      script: freezed == script
          ? _self.script
          : script // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [OperationModel].
extension OperationModelPatterns on OperationModel {
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
    TResult Function(_OperationModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OperationModel() when $default != null:
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
    TResult Function(_OperationModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OperationModel():
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
    TResult? Function(_OperationModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OperationModel() when $default != null:
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
    TResult Function(
            String? name,
            String? type,
            String? metod,
            String? path,
            String? variable,
            String? where,
            String? errorVariable,
            String? script)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OperationModel() when $default != null:
        return $default(_that.name, _that.type, _that.metod, _that.path,
            _that.variable, _that.where, _that.errorVariable, _that.script);
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
    TResult Function(
            String? name,
            String? type,
            String? metod,
            String? path,
            String? variable,
            String? where,
            String? errorVariable,
            String? script)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OperationModel():
        return $default(_that.name, _that.type, _that.metod, _that.path,
            _that.variable, _that.where, _that.errorVariable, _that.script);
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
    TResult? Function(
            String? name,
            String? type,
            String? metod,
            String? path,
            String? variable,
            String? where,
            String? errorVariable,
            String? script)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OperationModel() when $default != null:
        return $default(_that.name, _that.type, _that.metod, _that.path,
            _that.variable, _that.where, _that.errorVariable, _that.script);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OperationModel implements OperationModel {
  const _OperationModel(
      {this.name,
      this.type,
      this.metod,
      this.path,
      this.variable,
      this.where,
      this.errorVariable,
      this.script});
  factory _OperationModel.fromJson(Map<String, dynamic> json) =>
      _$OperationModelFromJson(json);

  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? metod;
  @override
  final String? path;
  @override
  final String? variable;
  @override
  final String? where;
  @override
  final String? errorVariable;
  @override
  final String? script;

  /// Create a copy of OperationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OperationModelCopyWith<_OperationModel> get copyWith =>
      __$OperationModelCopyWithImpl<_OperationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OperationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OperationModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.metod, metod) || other.metod == metod) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.variable, variable) ||
                other.variable == variable) &&
            (identical(other.where, where) || other.where == where) &&
            (identical(other.errorVariable, errorVariable) ||
                other.errorVariable == errorVariable) &&
            (identical(other.script, script) || other.script == script));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, metod, path,
      variable, where, errorVariable, script);

  @override
  String toString() {
    return 'OperationModel(name: $name, type: $type, metod: $metod, path: $path, variable: $variable, where: $where, errorVariable: $errorVariable, script: $script)';
  }
}

/// @nodoc
abstract mixin class _$OperationModelCopyWith<$Res>
    implements $OperationModelCopyWith<$Res> {
  factory _$OperationModelCopyWith(
          _OperationModel value, $Res Function(_OperationModel) _then) =
      __$OperationModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      String? type,
      String? metod,
      String? path,
      String? variable,
      String? where,
      String? errorVariable,
      String? script});
}

/// @nodoc
class __$OperationModelCopyWithImpl<$Res>
    implements _$OperationModelCopyWith<$Res> {
  __$OperationModelCopyWithImpl(this._self, this._then);

  final _OperationModel _self;
  final $Res Function(_OperationModel) _then;

  /// Create a copy of OperationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? metod = freezed,
    Object? path = freezed,
    Object? variable = freezed,
    Object? where = freezed,
    Object? errorVariable = freezed,
    Object? script = freezed,
  }) {
    return _then(_OperationModel(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      metod: freezed == metod
          ? _self.metod
          : metod // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      variable: freezed == variable
          ? _self.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as String?,
      where: freezed == where
          ? _self.where
          : where // ignore: cast_nullable_to_non_nullable
              as String?,
      errorVariable: freezed == errorVariable
          ? _self.errorVariable
          : errorVariable // ignore: cast_nullable_to_non_nullable
              as String?,
      script: freezed == script
          ? _self.script
          : script // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
