// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_answer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenerateAnswerRequest {
  String get prompt;
  String get model;
  @JsonKey(defaultValue: true)
  bool? get stream;

  /// Create a copy of GenerateAnswerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GenerateAnswerRequestCopyWith<GenerateAnswerRequest> get copyWith =>
      _$GenerateAnswerRequestCopyWithImpl<GenerateAnswerRequest>(
          this as GenerateAnswerRequest, _$identity);

  /// Serializes this GenerateAnswerRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenerateAnswerRequest &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.stream, stream) || other.stream == stream));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prompt, model, stream);

  @override
  String toString() {
    return 'GenerateAnswerRequest(prompt: $prompt, model: $model, stream: $stream)';
  }
}

/// @nodoc
abstract mixin class $GenerateAnswerRequestCopyWith<$Res> {
  factory $GenerateAnswerRequestCopyWith(GenerateAnswerRequest value,
          $Res Function(GenerateAnswerRequest) _then) =
      _$GenerateAnswerRequestCopyWithImpl;
  @useResult
  $Res call(
      {String prompt, String model, @JsonKey(defaultValue: true) bool? stream});
}

/// @nodoc
class _$GenerateAnswerRequestCopyWithImpl<$Res>
    implements $GenerateAnswerRequestCopyWith<$Res> {
  _$GenerateAnswerRequestCopyWithImpl(this._self, this._then);

  final GenerateAnswerRequest _self;
  final $Res Function(GenerateAnswerRequest) _then;

  /// Create a copy of GenerateAnswerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? model = null,
    Object? stream = freezed,
  }) {
    return _then(_self.copyWith(
      prompt: null == prompt
          ? _self.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      stream: freezed == stream
          ? _self.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GenerateAnswerRequest].
extension GenerateAnswerRequestPatterns on GenerateAnswerRequest {
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
    TResult Function(_GenerateAnswerRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GenerateAnswerRequest() when $default != null:
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
    TResult Function(_GenerateAnswerRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenerateAnswerRequest():
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
    TResult? Function(_GenerateAnswerRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenerateAnswerRequest() when $default != null:
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
    TResult Function(String prompt, String model,
            @JsonKey(defaultValue: true) bool? stream)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GenerateAnswerRequest() when $default != null:
        return $default(_that.prompt, _that.model, _that.stream);
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
    TResult Function(String prompt, String model,
            @JsonKey(defaultValue: true) bool? stream)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenerateAnswerRequest():
        return $default(_that.prompt, _that.model, _that.stream);
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
    TResult? Function(String prompt, String model,
            @JsonKey(defaultValue: true) bool? stream)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GenerateAnswerRequest() when $default != null:
        return $default(_that.prompt, _that.model, _that.stream);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GenerateAnswerRequest implements GenerateAnswerRequest {
  const _GenerateAnswerRequest(
      {required this.prompt,
      required this.model,
      @JsonKey(defaultValue: true) this.stream});
  factory _GenerateAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$GenerateAnswerRequestFromJson(json);

  @override
  final String prompt;
  @override
  final String model;
  @override
  @JsonKey(defaultValue: true)
  final bool? stream;

  /// Create a copy of GenerateAnswerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GenerateAnswerRequestCopyWith<_GenerateAnswerRequest> get copyWith =>
      __$GenerateAnswerRequestCopyWithImpl<_GenerateAnswerRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GenerateAnswerRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenerateAnswerRequest &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.stream, stream) || other.stream == stream));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, prompt, model, stream);

  @override
  String toString() {
    return 'GenerateAnswerRequest(prompt: $prompt, model: $model, stream: $stream)';
  }
}

/// @nodoc
abstract mixin class _$GenerateAnswerRequestCopyWith<$Res>
    implements $GenerateAnswerRequestCopyWith<$Res> {
  factory _$GenerateAnswerRequestCopyWith(_GenerateAnswerRequest value,
          $Res Function(_GenerateAnswerRequest) _then) =
      __$GenerateAnswerRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String prompt, String model, @JsonKey(defaultValue: true) bool? stream});
}

/// @nodoc
class __$GenerateAnswerRequestCopyWithImpl<$Res>
    implements _$GenerateAnswerRequestCopyWith<$Res> {
  __$GenerateAnswerRequestCopyWithImpl(this._self, this._then);

  final _GenerateAnswerRequest _self;
  final $Res Function(_GenerateAnswerRequest) _then;

  /// Create a copy of GenerateAnswerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? prompt = null,
    Object? model = null,
    Object? stream = freezed,
  }) {
    return _then(_GenerateAnswerRequest(
      prompt: null == prompt
          ? _self.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      stream: freezed == stream
          ? _self.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
