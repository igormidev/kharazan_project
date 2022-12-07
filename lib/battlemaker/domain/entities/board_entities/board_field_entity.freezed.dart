// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'board_field_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoardFieldEntity {
  /// The [coordenate] that indicate where is the [piece]
  Coordenate get coordenate => throw _privateConstructorUsedError;
  String get uniqueId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coordenate coordenate, PieceState pieceState,
            String pieceOwnerId, String uniqueId)
        piece,
    required TResult Function(String uniqueId, Coordenate coordenate)
        damageArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Coordenate coordenate, PieceState pieceState,
            String pieceOwnerId, String uniqueId)?
        piece,
    TResult? Function(String uniqueId, Coordenate coordenate)? damageArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coordenate coordenate, PieceState pieceState,
            String pieceOwnerId, String uniqueId)?
        piece,
    TResult Function(String uniqueId, Coordenate coordenate)? damageArea,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoardPieceEntity value) piece,
    required TResult Function(BoardDamageArea value) damageArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoardPieceEntity value)? piece,
    TResult? Function(BoardDamageArea value)? damageArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoardPieceEntity value)? piece,
    TResult Function(BoardDamageArea value)? damageArea,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardFieldEntityCopyWith<BoardFieldEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardFieldEntityCopyWith<$Res> {
  factory $BoardFieldEntityCopyWith(
          BoardFieldEntity value, $Res Function(BoardFieldEntity) then) =
      _$BoardFieldEntityCopyWithImpl<$Res, BoardFieldEntity>;
  @useResult
  $Res call({Coordenate coordenate, String uniqueId});
}

/// @nodoc
class _$BoardFieldEntityCopyWithImpl<$Res, $Val extends BoardFieldEntity>
    implements $BoardFieldEntityCopyWith<$Res> {
  _$BoardFieldEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordenate = null,
    Object? uniqueId = null,
  }) {
    return _then(_value.copyWith(
      coordenate: null == coordenate
          ? _value.coordenate
          : coordenate // ignore: cast_nullable_to_non_nullable
              as Coordenate,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardPieceEntityCopyWith<$Res>
    implements $BoardFieldEntityCopyWith<$Res> {
  factory _$$BoardPieceEntityCopyWith(
          _$BoardPieceEntity value, $Res Function(_$BoardPieceEntity) then) =
      __$$BoardPieceEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Coordenate coordenate,
      PieceState pieceState,
      String pieceOwnerId,
      String uniqueId});

  $PieceStateCopyWith<$Res> get pieceState;
}

/// @nodoc
class __$$BoardPieceEntityCopyWithImpl<$Res>
    extends _$BoardFieldEntityCopyWithImpl<$Res, _$BoardPieceEntity>
    implements _$$BoardPieceEntityCopyWith<$Res> {
  __$$BoardPieceEntityCopyWithImpl(
      _$BoardPieceEntity _value, $Res Function(_$BoardPieceEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordenate = null,
    Object? pieceState = null,
    Object? pieceOwnerId = null,
    Object? uniqueId = null,
  }) {
    return _then(_$BoardPieceEntity(
      coordenate: null == coordenate
          ? _value.coordenate
          : coordenate // ignore: cast_nullable_to_non_nullable
              as Coordenate,
      pieceState: null == pieceState
          ? _value.pieceState
          : pieceState // ignore: cast_nullable_to_non_nullable
              as PieceState,
      pieceOwnerId: null == pieceOwnerId
          ? _value.pieceOwnerId
          : pieceOwnerId // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PieceStateCopyWith<$Res> get pieceState {
    return $PieceStateCopyWith<$Res>(_value.pieceState, (value) {
      return _then(_value.copyWith(pieceState: value));
    });
  }
}

/// @nodoc

class _$BoardPieceEntity implements BoardPieceEntity {
  const _$BoardPieceEntity(
      {required this.coordenate,
      required this.pieceState,
      required this.pieceOwnerId,
      required this.uniqueId});

  /// The [coordenate] that indicate where is the [piece]
  @override
  final Coordenate coordenate;

  /// The [piece] that is in the [coordenate]
  @override
  final PieceState pieceState;

  /// The id of the user that can control the piece
  @override
  final String pieceOwnerId;
  @override
  final String uniqueId;

  @override
  String toString() {
    return 'BoardFieldEntity.piece(coordenate: $coordenate, pieceState: $pieceState, pieceOwnerId: $pieceOwnerId, uniqueId: $uniqueId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardPieceEntity &&
            (identical(other.coordenate, coordenate) ||
                other.coordenate == coordenate) &&
            (identical(other.pieceState, pieceState) ||
                other.pieceState == pieceState) &&
            (identical(other.pieceOwnerId, pieceOwnerId) ||
                other.pieceOwnerId == pieceOwnerId) &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, coordenate, pieceState, pieceOwnerId, uniqueId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardPieceEntityCopyWith<_$BoardPieceEntity> get copyWith =>
      __$$BoardPieceEntityCopyWithImpl<_$BoardPieceEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coordenate coordenate, PieceState pieceState,
            String pieceOwnerId, String uniqueId)
        piece,
    required TResult Function(String uniqueId, Coordenate coordenate)
        damageArea,
  }) {
    return piece(coordenate, pieceState, pieceOwnerId, uniqueId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Coordenate coordenate, PieceState pieceState,
            String pieceOwnerId, String uniqueId)?
        piece,
    TResult? Function(String uniqueId, Coordenate coordenate)? damageArea,
  }) {
    return piece?.call(coordenate, pieceState, pieceOwnerId, uniqueId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coordenate coordenate, PieceState pieceState,
            String pieceOwnerId, String uniqueId)?
        piece,
    TResult Function(String uniqueId, Coordenate coordenate)? damageArea,
    required TResult orElse(),
  }) {
    if (piece != null) {
      return piece(coordenate, pieceState, pieceOwnerId, uniqueId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoardPieceEntity value) piece,
    required TResult Function(BoardDamageArea value) damageArea,
  }) {
    return piece(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoardPieceEntity value)? piece,
    TResult? Function(BoardDamageArea value)? damageArea,
  }) {
    return piece?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoardPieceEntity value)? piece,
    TResult Function(BoardDamageArea value)? damageArea,
    required TResult orElse(),
  }) {
    if (piece != null) {
      return piece(this);
    }
    return orElse();
  }
}

abstract class BoardPieceEntity implements BoardFieldEntity {
  const factory BoardPieceEntity(
      {required final Coordenate coordenate,
      required final PieceState pieceState,
      required final String pieceOwnerId,
      required final String uniqueId}) = _$BoardPieceEntity;

  @override

  /// The [coordenate] that indicate where is the [piece]
  Coordenate get coordenate;

  /// The [piece] that is in the [coordenate]
  PieceState get pieceState;

  /// The id of the user that can control the piece
  String get pieceOwnerId;
  @override
  String get uniqueId;
  @override
  @JsonKey(ignore: true)
  _$$BoardPieceEntityCopyWith<_$BoardPieceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BoardDamageAreaCopyWith<$Res>
    implements $BoardFieldEntityCopyWith<$Res> {
  factory _$$BoardDamageAreaCopyWith(
          _$BoardDamageArea value, $Res Function(_$BoardDamageArea) then) =
      __$$BoardDamageAreaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uniqueId, Coordenate coordenate});
}

/// @nodoc
class __$$BoardDamageAreaCopyWithImpl<$Res>
    extends _$BoardFieldEntityCopyWithImpl<$Res, _$BoardDamageArea>
    implements _$$BoardDamageAreaCopyWith<$Res> {
  __$$BoardDamageAreaCopyWithImpl(
      _$BoardDamageArea _value, $Res Function(_$BoardDamageArea) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueId = null,
    Object? coordenate = null,
  }) {
    return _then(_$BoardDamageArea(
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      coordenate: null == coordenate
          ? _value.coordenate
          : coordenate // ignore: cast_nullable_to_non_nullable
              as Coordenate,
    ));
  }
}

/// @nodoc

class _$BoardDamageArea implements BoardDamageArea {
  const _$BoardDamageArea({required this.uniqueId, required this.coordenate});

  @override
  final String uniqueId;
  @override
  final Coordenate coordenate;

  @override
  String toString() {
    return 'BoardFieldEntity.damageArea(uniqueId: $uniqueId, coordenate: $coordenate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardDamageArea &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId) &&
            (identical(other.coordenate, coordenate) ||
                other.coordenate == coordenate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uniqueId, coordenate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardDamageAreaCopyWith<_$BoardDamageArea> get copyWith =>
      __$$BoardDamageAreaCopyWithImpl<_$BoardDamageArea>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coordenate coordenate, PieceState pieceState,
            String pieceOwnerId, String uniqueId)
        piece,
    required TResult Function(String uniqueId, Coordenate coordenate)
        damageArea,
  }) {
    return damageArea(uniqueId, coordenate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Coordenate coordenate, PieceState pieceState,
            String pieceOwnerId, String uniqueId)?
        piece,
    TResult? Function(String uniqueId, Coordenate coordenate)? damageArea,
  }) {
    return damageArea?.call(uniqueId, coordenate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coordenate coordenate, PieceState pieceState,
            String pieceOwnerId, String uniqueId)?
        piece,
    TResult Function(String uniqueId, Coordenate coordenate)? damageArea,
    required TResult orElse(),
  }) {
    if (damageArea != null) {
      return damageArea(uniqueId, coordenate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoardPieceEntity value) piece,
    required TResult Function(BoardDamageArea value) damageArea,
  }) {
    return damageArea(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoardPieceEntity value)? piece,
    TResult? Function(BoardDamageArea value)? damageArea,
  }) {
    return damageArea?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoardPieceEntity value)? piece,
    TResult Function(BoardDamageArea value)? damageArea,
    required TResult orElse(),
  }) {
    if (damageArea != null) {
      return damageArea(this);
    }
    return orElse();
  }
}

abstract class BoardDamageArea implements BoardFieldEntity {
  const factory BoardDamageArea(
      {required final String uniqueId,
      required final Coordenate coordenate}) = _$BoardDamageArea;

  @override
  String get uniqueId;
  @override
  Coordenate get coordenate;
  @override
  @JsonKey(ignore: true)
  _$$BoardDamageAreaCopyWith<_$BoardDamageArea> get copyWith =>
      throw _privateConstructorUsedError;
}
