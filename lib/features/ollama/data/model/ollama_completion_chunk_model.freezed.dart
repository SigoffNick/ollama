// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ollama_completion_chunk_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OllamaCompletionChunkModel {
  String get model;
  @JsonKey(name: 'created_at')
  String get createdAt;
  String? get response;
  bool? get done;

  /// Create a copy of OllamaCompletionChunkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OllamaCompletionChunkModelCopyWith<OllamaCompletionChunkModel>
      get copyWith =>
          _$OllamaCompletionChunkModelCopyWithImpl<OllamaCompletionChunkModel>(
              this as OllamaCompletionChunkModel, _$identity);

  /// Serializes this OllamaCompletionChunkModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OllamaCompletionChunkModel &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, model, createdAt, response, done);

  @override
  String toString() {
    return 'OllamaCompletionChunkModel(model: $model, createdAt: $createdAt, response: $response, done: $done)';
  }
}

/// @nodoc
abstract mixin class $OllamaCompletionChunkModelCopyWith<$Res> {
  factory $OllamaCompletionChunkModelCopyWith(OllamaCompletionChunkModel value,
          $Res Function(OllamaCompletionChunkModel) _then) =
      _$OllamaCompletionChunkModelCopyWithImpl;
  @useResult
  $Res call(
      {String model,
      @JsonKey(name: 'created_at') String createdAt,
      String? response,
      bool? done});
}

/// @nodoc
class _$OllamaCompletionChunkModelCopyWithImpl<$Res>
    implements $OllamaCompletionChunkModelCopyWith<$Res> {
  _$OllamaCompletionChunkModelCopyWithImpl(this._self, this._then);

  final OllamaCompletionChunkModel _self;
  final $Res Function(OllamaCompletionChunkModel) _then;

  /// Create a copy of OllamaCompletionChunkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? createdAt = null,
    Object? response = freezed,
    Object? done = freezed,
  }) {
    return _then(_self.copyWith(
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      response: freezed == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      done: freezed == done
          ? _self.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [OllamaCompletionChunkModel].
extension OllamaCompletionChunkModelPatterns on OllamaCompletionChunkModel {
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
    TResult Function(_OllamaCompletionChunkModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OllamaCompletionChunkModel() when $default != null:
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
    TResult Function(_OllamaCompletionChunkModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OllamaCompletionChunkModel():
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
    TResult? Function(_OllamaCompletionChunkModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OllamaCompletionChunkModel() when $default != null:
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
            String model,
            @JsonKey(name: 'created_at') String createdAt,
            String? response,
            bool? done)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OllamaCompletionChunkModel() when $default != null:
        return $default(
            _that.model, _that.createdAt, _that.response, _that.done);
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
            String model,
            @JsonKey(name: 'created_at') String createdAt,
            String? response,
            bool? done)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OllamaCompletionChunkModel():
        return $default(
            _that.model, _that.createdAt, _that.response, _that.done);
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
            String model,
            @JsonKey(name: 'created_at') String createdAt,
            String? response,
            bool? done)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OllamaCompletionChunkModel() when $default != null:
        return $default(
            _that.model, _that.createdAt, _that.response, _that.done);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OllamaCompletionChunkModel implements OllamaCompletionChunkModel {
  const _OllamaCompletionChunkModel(
      {required this.model,
      @JsonKey(name: 'created_at') required this.createdAt,
      this.response,
      this.done});
  factory _OllamaCompletionChunkModel.fromJson(Map<String, dynamic> json) =>
      _$OllamaCompletionChunkModelFromJson(json);

  @override
  final String model;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final String? response;
  @override
  final bool? done;

  /// Create a copy of OllamaCompletionChunkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OllamaCompletionChunkModelCopyWith<_OllamaCompletionChunkModel>
      get copyWith => __$OllamaCompletionChunkModelCopyWithImpl<
          _OllamaCompletionChunkModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OllamaCompletionChunkModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OllamaCompletionChunkModel &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, model, createdAt, response, done);

  @override
  String toString() {
    return 'OllamaCompletionChunkModel(model: $model, createdAt: $createdAt, response: $response, done: $done)';
  }
}

/// @nodoc
abstract mixin class _$OllamaCompletionChunkModelCopyWith<$Res>
    implements $OllamaCompletionChunkModelCopyWith<$Res> {
  factory _$OllamaCompletionChunkModelCopyWith(
          _OllamaCompletionChunkModel value,
          $Res Function(_OllamaCompletionChunkModel) _then) =
      __$OllamaCompletionChunkModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String model,
      @JsonKey(name: 'created_at') String createdAt,
      String? response,
      bool? done});
}

/// @nodoc
class __$OllamaCompletionChunkModelCopyWithImpl<$Res>
    implements _$OllamaCompletionChunkModelCopyWith<$Res> {
  __$OllamaCompletionChunkModelCopyWithImpl(this._self, this._then);

  final _OllamaCompletionChunkModel _self;
  final $Res Function(_OllamaCompletionChunkModel) _then;

  /// Create a copy of OllamaCompletionChunkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? model = null,
    Object? createdAt = null,
    Object? response = freezed,
    Object? done = freezed,
  }) {
    return _then(_OllamaCompletionChunkModel(
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      response: freezed == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      done: freezed == done
          ? _self.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
