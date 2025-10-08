// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ollama_full_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OllamaFullAnswerModel {
  String get model;
  @JsonKey(name: 'created_at')
  String get createdAt;
  String get response;
  bool get done;
  @JsonKey(name: 'done_reason')
  String? get doneReason;
  List<dynamic>? get context;
  @JsonKey(name: 'total_duration')
  int? get totalDuration;
  @JsonKey(name: 'load_duration')
  int? get loadDuration;
  @JsonKey(name: 'prompt_eval_count')
  int? get promptEvalCount;
  @JsonKey(name: 'prompt_eval_duration')
  int? get promptEvalDuration;
  @JsonKey(name: 'eval_count')
  int? get evalCount;
  @JsonKey(name: 'eval_duration')
  int? get evalDuration;

  /// Create a copy of OllamaFullAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OllamaFullAnswerModelCopyWith<OllamaFullAnswerModel> get copyWith =>
      _$OllamaFullAnswerModelCopyWithImpl<OllamaFullAnswerModel>(
          this as OllamaFullAnswerModel, _$identity);

  /// Serializes this OllamaFullAnswerModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OllamaFullAnswerModel &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.doneReason, doneReason) ||
                other.doneReason == doneReason) &&
            const DeepCollectionEquality().equals(other.context, context) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration) &&
            (identical(other.loadDuration, loadDuration) ||
                other.loadDuration == loadDuration) &&
            (identical(other.promptEvalCount, promptEvalCount) ||
                other.promptEvalCount == promptEvalCount) &&
            (identical(other.promptEvalDuration, promptEvalDuration) ||
                other.promptEvalDuration == promptEvalDuration) &&
            (identical(other.evalCount, evalCount) ||
                other.evalCount == evalCount) &&
            (identical(other.evalDuration, evalDuration) ||
                other.evalDuration == evalDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      model,
      createdAt,
      response,
      done,
      doneReason,
      const DeepCollectionEquality().hash(context),
      totalDuration,
      loadDuration,
      promptEvalCount,
      promptEvalDuration,
      evalCount,
      evalDuration);

  @override
  String toString() {
    return 'OllamaFullAnswerModel(model: $model, createdAt: $createdAt, response: $response, done: $done, doneReason: $doneReason, context: $context, totalDuration: $totalDuration, loadDuration: $loadDuration, promptEvalCount: $promptEvalCount, promptEvalDuration: $promptEvalDuration, evalCount: $evalCount, evalDuration: $evalDuration)';
  }
}

/// @nodoc
abstract mixin class $OllamaFullAnswerModelCopyWith<$Res> {
  factory $OllamaFullAnswerModelCopyWith(OllamaFullAnswerModel value,
          $Res Function(OllamaFullAnswerModel) _then) =
      _$OllamaFullAnswerModelCopyWithImpl;
  @useResult
  $Res call(
      {String model,
      @JsonKey(name: 'created_at') String createdAt,
      String response,
      bool done,
      @JsonKey(name: 'done_reason') String? doneReason,
      List<dynamic>? context,
      @JsonKey(name: 'total_duration') int? totalDuration,
      @JsonKey(name: 'load_duration') int? loadDuration,
      @JsonKey(name: 'prompt_eval_count') int? promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration') int? promptEvalDuration,
      @JsonKey(name: 'eval_count') int? evalCount,
      @JsonKey(name: 'eval_duration') int? evalDuration});
}

/// @nodoc
class _$OllamaFullAnswerModelCopyWithImpl<$Res>
    implements $OllamaFullAnswerModelCopyWith<$Res> {
  _$OllamaFullAnswerModelCopyWithImpl(this._self, this._then);

  final OllamaFullAnswerModel _self;
  final $Res Function(OllamaFullAnswerModel) _then;

  /// Create a copy of OllamaFullAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? createdAt = null,
    Object? response = null,
    Object? done = null,
    Object? doneReason = freezed,
    Object? context = freezed,
    Object? totalDuration = freezed,
    Object? loadDuration = freezed,
    Object? promptEvalCount = freezed,
    Object? promptEvalDuration = freezed,
    Object? evalCount = freezed,
    Object? evalDuration = freezed,
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
      response: null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _self.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      doneReason: freezed == doneReason
          ? _self.doneReason
          : doneReason // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _self.context
          : context // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      totalDuration: freezed == totalDuration
          ? _self.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      loadDuration: freezed == loadDuration
          ? _self.loadDuration
          : loadDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      promptEvalCount: freezed == promptEvalCount
          ? _self.promptEvalCount
          : promptEvalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      promptEvalDuration: freezed == promptEvalDuration
          ? _self.promptEvalDuration
          : promptEvalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      evalCount: freezed == evalCount
          ? _self.evalCount
          : evalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      evalDuration: freezed == evalDuration
          ? _self.evalDuration
          : evalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [OllamaFullAnswerModel].
extension OllamaFullAnswerModelPatterns on OllamaFullAnswerModel {
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
    TResult Function(_OllamaFullAnswerModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OllamaFullAnswerModel() when $default != null:
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
    TResult Function(_OllamaFullAnswerModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OllamaFullAnswerModel():
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
    TResult? Function(_OllamaFullAnswerModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OllamaFullAnswerModel() when $default != null:
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
            String response,
            bool done,
            @JsonKey(name: 'done_reason') String? doneReason,
            List<dynamic>? context,
            @JsonKey(name: 'total_duration') int? totalDuration,
            @JsonKey(name: 'load_duration') int? loadDuration,
            @JsonKey(name: 'prompt_eval_count') int? promptEvalCount,
            @JsonKey(name: 'prompt_eval_duration') int? promptEvalDuration,
            @JsonKey(name: 'eval_count') int? evalCount,
            @JsonKey(name: 'eval_duration') int? evalDuration)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OllamaFullAnswerModel() when $default != null:
        return $default(
            _that.model,
            _that.createdAt,
            _that.response,
            _that.done,
            _that.doneReason,
            _that.context,
            _that.totalDuration,
            _that.loadDuration,
            _that.promptEvalCount,
            _that.promptEvalDuration,
            _that.evalCount,
            _that.evalDuration);
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
            String response,
            bool done,
            @JsonKey(name: 'done_reason') String? doneReason,
            List<dynamic>? context,
            @JsonKey(name: 'total_duration') int? totalDuration,
            @JsonKey(name: 'load_duration') int? loadDuration,
            @JsonKey(name: 'prompt_eval_count') int? promptEvalCount,
            @JsonKey(name: 'prompt_eval_duration') int? promptEvalDuration,
            @JsonKey(name: 'eval_count') int? evalCount,
            @JsonKey(name: 'eval_duration') int? evalDuration)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OllamaFullAnswerModel():
        return $default(
            _that.model,
            _that.createdAt,
            _that.response,
            _that.done,
            _that.doneReason,
            _that.context,
            _that.totalDuration,
            _that.loadDuration,
            _that.promptEvalCount,
            _that.promptEvalDuration,
            _that.evalCount,
            _that.evalDuration);
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
            String response,
            bool done,
            @JsonKey(name: 'done_reason') String? doneReason,
            List<dynamic>? context,
            @JsonKey(name: 'total_duration') int? totalDuration,
            @JsonKey(name: 'load_duration') int? loadDuration,
            @JsonKey(name: 'prompt_eval_count') int? promptEvalCount,
            @JsonKey(name: 'prompt_eval_duration') int? promptEvalDuration,
            @JsonKey(name: 'eval_count') int? evalCount,
            @JsonKey(name: 'eval_duration') int? evalDuration)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OllamaFullAnswerModel() when $default != null:
        return $default(
            _that.model,
            _that.createdAt,
            _that.response,
            _that.done,
            _that.doneReason,
            _that.context,
            _that.totalDuration,
            _that.loadDuration,
            _that.promptEvalCount,
            _that.promptEvalDuration,
            _that.evalCount,
            _that.evalDuration);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OllamaFullAnswerModel implements OllamaFullAnswerModel {
  _OllamaFullAnswerModel(
      {required this.model,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.response,
      required this.done,
      @JsonKey(name: 'done_reason') this.doneReason,
      final List<dynamic>? context,
      @JsonKey(name: 'total_duration') this.totalDuration,
      @JsonKey(name: 'load_duration') this.loadDuration,
      @JsonKey(name: 'prompt_eval_count') this.promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration') this.promptEvalDuration,
      @JsonKey(name: 'eval_count') this.evalCount,
      @JsonKey(name: 'eval_duration') this.evalDuration})
      : _context = context;
  factory _OllamaFullAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$OllamaFullAnswerModelFromJson(json);

  @override
  final String model;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final String response;
  @override
  final bool done;
  @override
  @JsonKey(name: 'done_reason')
  final String? doneReason;
  final List<dynamic>? _context;
  @override
  List<dynamic>? get context {
    final value = _context;
    if (value == null) return null;
    if (_context is EqualUnmodifiableListView) return _context;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_duration')
  final int? totalDuration;
  @override
  @JsonKey(name: 'load_duration')
  final int? loadDuration;
  @override
  @JsonKey(name: 'prompt_eval_count')
  final int? promptEvalCount;
  @override
  @JsonKey(name: 'prompt_eval_duration')
  final int? promptEvalDuration;
  @override
  @JsonKey(name: 'eval_count')
  final int? evalCount;
  @override
  @JsonKey(name: 'eval_duration')
  final int? evalDuration;

  /// Create a copy of OllamaFullAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OllamaFullAnswerModelCopyWith<_OllamaFullAnswerModel> get copyWith =>
      __$OllamaFullAnswerModelCopyWithImpl<_OllamaFullAnswerModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OllamaFullAnswerModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OllamaFullAnswerModel &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.doneReason, doneReason) ||
                other.doneReason == doneReason) &&
            const DeepCollectionEquality().equals(other._context, _context) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration) &&
            (identical(other.loadDuration, loadDuration) ||
                other.loadDuration == loadDuration) &&
            (identical(other.promptEvalCount, promptEvalCount) ||
                other.promptEvalCount == promptEvalCount) &&
            (identical(other.promptEvalDuration, promptEvalDuration) ||
                other.promptEvalDuration == promptEvalDuration) &&
            (identical(other.evalCount, evalCount) ||
                other.evalCount == evalCount) &&
            (identical(other.evalDuration, evalDuration) ||
                other.evalDuration == evalDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      model,
      createdAt,
      response,
      done,
      doneReason,
      const DeepCollectionEquality().hash(_context),
      totalDuration,
      loadDuration,
      promptEvalCount,
      promptEvalDuration,
      evalCount,
      evalDuration);

  @override
  String toString() {
    return 'OllamaFullAnswerModel(model: $model, createdAt: $createdAt, response: $response, done: $done, doneReason: $doneReason, context: $context, totalDuration: $totalDuration, loadDuration: $loadDuration, promptEvalCount: $promptEvalCount, promptEvalDuration: $promptEvalDuration, evalCount: $evalCount, evalDuration: $evalDuration)';
  }
}

/// @nodoc
abstract mixin class _$OllamaFullAnswerModelCopyWith<$Res>
    implements $OllamaFullAnswerModelCopyWith<$Res> {
  factory _$OllamaFullAnswerModelCopyWith(_OllamaFullAnswerModel value,
          $Res Function(_OllamaFullAnswerModel) _then) =
      __$OllamaFullAnswerModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String model,
      @JsonKey(name: 'created_at') String createdAt,
      String response,
      bool done,
      @JsonKey(name: 'done_reason') String? doneReason,
      List<dynamic>? context,
      @JsonKey(name: 'total_duration') int? totalDuration,
      @JsonKey(name: 'load_duration') int? loadDuration,
      @JsonKey(name: 'prompt_eval_count') int? promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration') int? promptEvalDuration,
      @JsonKey(name: 'eval_count') int? evalCount,
      @JsonKey(name: 'eval_duration') int? evalDuration});
}

/// @nodoc
class __$OllamaFullAnswerModelCopyWithImpl<$Res>
    implements _$OllamaFullAnswerModelCopyWith<$Res> {
  __$OllamaFullAnswerModelCopyWithImpl(this._self, this._then);

  final _OllamaFullAnswerModel _self;
  final $Res Function(_OllamaFullAnswerModel) _then;

  /// Create a copy of OllamaFullAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? model = null,
    Object? createdAt = null,
    Object? response = null,
    Object? done = null,
    Object? doneReason = freezed,
    Object? context = freezed,
    Object? totalDuration = freezed,
    Object? loadDuration = freezed,
    Object? promptEvalCount = freezed,
    Object? promptEvalDuration = freezed,
    Object? evalCount = freezed,
    Object? evalDuration = freezed,
  }) {
    return _then(_OllamaFullAnswerModel(
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      response: null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _self.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      doneReason: freezed == doneReason
          ? _self.doneReason
          : doneReason // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _self._context
          : context // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      totalDuration: freezed == totalDuration
          ? _self.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      loadDuration: freezed == loadDuration
          ? _self.loadDuration
          : loadDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      promptEvalCount: freezed == promptEvalCount
          ? _self.promptEvalCount
          : promptEvalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      promptEvalDuration: freezed == promptEvalDuration
          ? _self.promptEvalDuration
          : promptEvalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      evalCount: freezed == evalCount
          ? _self.evalCount
          : evalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      evalDuration: freezed == evalDuration
          ? _self.evalDuration
          : evalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
