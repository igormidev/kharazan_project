// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'animation_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimationTypes {
  Duration get duration => throw _privateConstructorUsedError;
  String get entity => throw _privateConstructorUsedError;
  String get uniqueId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration, String entity, String uniqueId)
        attack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration, String entity, String uniqueId)?
        attack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration, String entity, String uniqueId)? attack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Piece value) attack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Piece value)? attack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Piece value)? attack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimationTypesCopyWith<AnimationTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimationTypesCopyWith<$Res> {
  factory $AnimationTypesCopyWith(
          AnimationTypes value, $Res Function(AnimationTypes) then) =
      _$AnimationTypesCopyWithImpl<$Res, AnimationTypes>;
  @useResult
  $Res call({Duration duration, String entity, String uniqueId});
}

/// @nodoc
class _$AnimationTypesCopyWithImpl<$Res, $Val extends AnimationTypes>
    implements $AnimationTypesCopyWith<$Res> {
  _$AnimationTypesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? entity = null,
    Object? uniqueId = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PieceCopyWith<$Res>
    implements $AnimationTypesCopyWith<$Res> {
  factory _$$_PieceCopyWith(_$_Piece value, $Res Function(_$_Piece) then) =
      __$$_PieceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration duration, String entity, String uniqueId});
}

/// @nodoc
class __$$_PieceCopyWithImpl<$Res>
    extends _$AnimationTypesCopyWithImpl<$Res, _$_Piece>
    implements _$$_PieceCopyWith<$Res> {
  __$$_PieceCopyWithImpl(_$_Piece _value, $Res Function(_$_Piece) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? entity = null,
    Object? uniqueId = null,
  }) {
    return _then(_$_Piece(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Piece implements _Piece {
  _$_Piece(
      {required this.duration, required this.entity, required this.uniqueId});

  @override
  final Duration duration;
  @override
  final String entity;
  @override
  final String uniqueId;

  @override
  String toString() {
    return 'AnimationTypes.attack(duration: $duration, entity: $entity, uniqueId: $uniqueId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Piece &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, entity, uniqueId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PieceCopyWith<_$_Piece> get copyWith =>
      __$$_PieceCopyWithImpl<_$_Piece>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration, String entity, String uniqueId)
        attack,
  }) {
    return attack(duration, entity, uniqueId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration duration, String entity, String uniqueId)?
        attack,
  }) {
    return attack?.call(duration, entity, uniqueId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration, String entity, String uniqueId)? attack,
    required TResult orElse(),
  }) {
    if (attack != null) {
      return attack(duration, entity, uniqueId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Piece value) attack,
  }) {
    return attack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Piece value)? attack,
  }) {
    return attack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Piece value)? attack,
    required TResult orElse(),
  }) {
    if (attack != null) {
      return attack(this);
    }
    return orElse();
  }
}

abstract class _Piece implements AnimationTypes {
  factory _Piece(
      {required final Duration duration,
      required final String entity,
      required final String uniqueId}) = _$_Piece;

  @override
  Duration get duration;
  @override
  String get entity;
  @override
  String get uniqueId;
  @override
  @JsonKey(ignore: true)
  _$$_PieceCopyWith<_$_Piece> get copyWith =>
      throw _privateConstructorUsedError;
}
