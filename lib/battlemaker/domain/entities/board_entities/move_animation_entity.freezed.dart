// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'move_animation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoveAnimationEntity {
  int get damageTaken => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  Coordenate get coordenate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int damageTaken, Duration duration, Coordenate coordenate)
        damageIndicator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int damageTaken, Duration duration, Coordenate coordenate)?
        damageIndicator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int damageTaken, Duration duration, Coordenate coordenate)?
        damageIndicator,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DamageIndicator value) damageIndicator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DamageIndicator value)? damageIndicator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DamageIndicator value)? damageIndicator,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoveAnimationEntityCopyWith<MoveAnimationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveAnimationEntityCopyWith<$Res> {
  factory $MoveAnimationEntityCopyWith(
          MoveAnimationEntity value, $Res Function(MoveAnimationEntity) then) =
      _$MoveAnimationEntityCopyWithImpl<$Res, MoveAnimationEntity>;
  @useResult
  $Res call({int damageTaken, Duration duration, Coordenate coordenate});
}

/// @nodoc
class _$MoveAnimationEntityCopyWithImpl<$Res, $Val extends MoveAnimationEntity>
    implements $MoveAnimationEntityCopyWith<$Res> {
  _$MoveAnimationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? damageTaken = null,
    Object? duration = null,
    Object? coordenate = null,
  }) {
    return _then(_value.copyWith(
      damageTaken: null == damageTaken
          ? _value.damageTaken
          : damageTaken // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      coordenate: null == coordenate
          ? _value.coordenate
          : coordenate // ignore: cast_nullable_to_non_nullable
              as Coordenate,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DamageIndicatorCopyWith<$Res>
    implements $MoveAnimationEntityCopyWith<$Res> {
  factory _$$_DamageIndicatorCopyWith(
          _$_DamageIndicator value, $Res Function(_$_DamageIndicator) then) =
      __$$_DamageIndicatorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int damageTaken, Duration duration, Coordenate coordenate});
}

/// @nodoc
class __$$_DamageIndicatorCopyWithImpl<$Res>
    extends _$MoveAnimationEntityCopyWithImpl<$Res, _$_DamageIndicator>
    implements _$$_DamageIndicatorCopyWith<$Res> {
  __$$_DamageIndicatorCopyWithImpl(
      _$_DamageIndicator _value, $Res Function(_$_DamageIndicator) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? damageTaken = null,
    Object? duration = null,
    Object? coordenate = null,
  }) {
    return _then(_$_DamageIndicator(
      damageTaken: null == damageTaken
          ? _value.damageTaken
          : damageTaken // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      coordenate: null == coordenate
          ? _value.coordenate
          : coordenate // ignore: cast_nullable_to_non_nullable
              as Coordenate,
    ));
  }
}

/// @nodoc

class _$_DamageIndicator implements _DamageIndicator {
  const _$_DamageIndicator(
      {required this.damageTaken,
      required this.duration,
      required this.coordenate});

  @override
  final int damageTaken;
  @override
  final Duration duration;
  @override
  final Coordenate coordenate;

  @override
  String toString() {
    return 'MoveAnimationEntity.damageIndicator(damageTaken: $damageTaken, duration: $duration, coordenate: $coordenate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DamageIndicator &&
            (identical(other.damageTaken, damageTaken) ||
                other.damageTaken == damageTaken) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.coordenate, coordenate) ||
                other.coordenate == coordenate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, damageTaken, duration, coordenate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DamageIndicatorCopyWith<_$_DamageIndicator> get copyWith =>
      __$$_DamageIndicatorCopyWithImpl<_$_DamageIndicator>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int damageTaken, Duration duration, Coordenate coordenate)
        damageIndicator,
  }) {
    return damageIndicator(damageTaken, duration, coordenate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int damageTaken, Duration duration, Coordenate coordenate)?
        damageIndicator,
  }) {
    return damageIndicator?.call(damageTaken, duration, coordenate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int damageTaken, Duration duration, Coordenate coordenate)?
        damageIndicator,
    required TResult orElse(),
  }) {
    if (damageIndicator != null) {
      return damageIndicator(damageTaken, duration, coordenate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DamageIndicator value) damageIndicator,
  }) {
    return damageIndicator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DamageIndicator value)? damageIndicator,
  }) {
    return damageIndicator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DamageIndicator value)? damageIndicator,
    required TResult orElse(),
  }) {
    if (damageIndicator != null) {
      return damageIndicator(this);
    }
    return orElse();
  }
}

abstract class _DamageIndicator implements MoveAnimationEntity {
  const factory _DamageIndicator(
      {required final int damageTaken,
      required final Duration duration,
      required final Coordenate coordenate}) = _$_DamageIndicator;

  @override
  int get damageTaken;
  @override
  Duration get duration;
  @override
  Coordenate get coordenate;
  @override
  @JsonKey(ignore: true)
  _$$_DamageIndicatorCopyWith<_$_DamageIndicator> get copyWith =>
      throw _privateConstructorUsedError;
}
