// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ollama_chat_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OllamaChatMessageModel {
  String get role;
  String get content;
  List<String>? get images;

  /// Create a copy of OllamaChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OllamaChatMessageModelCopyWith<OllamaChatMessageModel> get copyWith =>
      _$OllamaChatMessageModelCopyWithImpl<OllamaChatMessageModel>(
          this as OllamaChatMessageModel, _$identity);

  /// Serializes this OllamaChatMessageModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OllamaChatMessageModel &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, role, content, const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'OllamaChatMessageModel(role: $role, content: $content, images: $images)';
  }
}

/// @nodoc
abstract mixin class $OllamaChatMessageModelCopyWith<$Res> {
  factory $OllamaChatMessageModelCopyWith(OllamaChatMessageModel value,
          $Res Function(OllamaChatMessageModel) _then) =
      _$OllamaChatMessageModelCopyWithImpl;
  @useResult
  $Res call({String role, String content, List<String>? images});
}

/// @nodoc
class _$OllamaChatMessageModelCopyWithImpl<$Res>
    implements $OllamaChatMessageModelCopyWith<$Res> {
  _$OllamaChatMessageModelCopyWithImpl(this._self, this._then);

  final OllamaChatMessageModel _self;
  final $Res Function(OllamaChatMessageModel) _then;

  /// Create a copy of OllamaChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
    Object? images = freezed,
  }) {
    return _then(_self.copyWith(
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [OllamaChatMessageModel].
extension OllamaChatMessageModelPatterns on OllamaChatMessageModel {
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
    TResult Function(_OllamaChatMessageModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OllamaChatMessageModel() when $default != null:
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
    TResult Function(_OllamaChatMessageModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OllamaChatMessageModel():
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
    TResult? Function(_OllamaChatMessageModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OllamaChatMessageModel() when $default != null:
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
    TResult Function(String role, String content, List<String>? images)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OllamaChatMessageModel() when $default != null:
        return $default(_that.role, _that.content, _that.images);
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
    TResult Function(String role, String content, List<String>? images)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OllamaChatMessageModel():
        return $default(_that.role, _that.content, _that.images);
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
    TResult? Function(String role, String content, List<String>? images)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OllamaChatMessageModel() when $default != null:
        return $default(_that.role, _that.content, _that.images);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OllamaChatMessageModel implements OllamaChatMessageModel {
  const _OllamaChatMessageModel(
      {required this.role, required this.content, final List<String>? images})
      : _images = images;
  factory _OllamaChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$OllamaChatMessageModelFromJson(json);

  @override
  final String role;
  @override
  final String content;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of OllamaChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OllamaChatMessageModelCopyWith<_OllamaChatMessageModel> get copyWith =>
      __$OllamaChatMessageModelCopyWithImpl<_OllamaChatMessageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OllamaChatMessageModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OllamaChatMessageModel &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, role, content, const DeepCollectionEquality().hash(_images));

  @override
  String toString() {
    return 'OllamaChatMessageModel(role: $role, content: $content, images: $images)';
  }
}

/// @nodoc
abstract mixin class _$OllamaChatMessageModelCopyWith<$Res>
    implements $OllamaChatMessageModelCopyWith<$Res> {
  factory _$OllamaChatMessageModelCopyWith(_OllamaChatMessageModel value,
          $Res Function(_OllamaChatMessageModel) _then) =
      __$OllamaChatMessageModelCopyWithImpl;
  @override
  @useResult
  $Res call({String role, String content, List<String>? images});
}

/// @nodoc
class __$OllamaChatMessageModelCopyWithImpl<$Res>
    implements _$OllamaChatMessageModelCopyWith<$Res> {
  __$OllamaChatMessageModelCopyWithImpl(this._self, this._then);

  final _OllamaChatMessageModel _self;
  final $Res Function(_OllamaChatMessageModel) _then;

  /// Create a copy of OllamaChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? role = null,
    Object? content = null,
    Object? images = freezed,
  }) {
    return _then(_OllamaChatMessageModel(
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
