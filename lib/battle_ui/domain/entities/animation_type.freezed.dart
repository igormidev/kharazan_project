// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'animation_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimationTypeEntity {
  BoardEntity get entity => throw _privateConstructorUsedError;
  String get uniqueId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BoardEntity entity, String uniqueId) piece,
    required TResult Function(String uniqueId, BoardEntity entity,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceChangePosition,
    required TResult Function(BoardEntity entity, String uniqueId,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceMakeAttack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BoardEntity entity, String uniqueId)? piece,
    TResult? Function(String uniqueId, BoardEntity entity,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangePosition,
    TResult? Function(BoardEntity entity, String uniqueId,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakeAttack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BoardEntity entity, String uniqueId)? piece,
    TResult Function(String uniqueId, BoardEntity entity,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangePosition,
    TResult Function(BoardEntity entity, String uniqueId,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakeAttack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NormalPiece value) piece,
    required TResult Function(_PieceChangePosition value) pieceChangePosition,
    required TResult Function(_PieceAttackMove value) pieceMakeAttack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NormalPiece value)? piece,
    TResult? Function(_PieceChangePosition value)? pieceChangePosition,
    TResult? Function(_PieceAttackMove value)? pieceMakeAttack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NormalPiece value)? piece,
    TResult Function(_PieceChangePosition value)? pieceChangePosition,
    TResult Function(_PieceAttackMove value)? pieceMakeAttack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimationTypeEntityCopyWith<AnimationTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimationTypeEntityCopyWith<$Res> {
  factory $AnimationTypeEntityCopyWith(
          AnimationTypeEntity value, $Res Function(AnimationTypeEntity) then) =
      _$AnimationTypeEntityCopyWithImpl<$Res, AnimationTypeEntity>;
  @useResult
  $Res call({BoardEntity entity, String uniqueId});
}

/// @nodoc
class _$AnimationTypeEntityCopyWithImpl<$Res, $Val extends AnimationTypeEntity>
    implements $AnimationTypeEntityCopyWith<$Res> {
  _$AnimationTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? uniqueId = null,
  }) {
    return _then(_value.copyWith(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as BoardEntity,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NormalPieceCopyWith<$Res>
    implements $AnimationTypeEntityCopyWith<$Res> {
  factory _$$_NormalPieceCopyWith(
          _$_NormalPiece value, $Res Function(_$_NormalPiece) then) =
      __$$_NormalPieceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BoardEntity entity, String uniqueId});
}

/// @nodoc
class __$$_NormalPieceCopyWithImpl<$Res>
    extends _$AnimationTypeEntityCopyWithImpl<$Res, _$_NormalPiece>
    implements _$$_NormalPieceCopyWith<$Res> {
  __$$_NormalPieceCopyWithImpl(
      _$_NormalPiece _value, $Res Function(_$_NormalPiece) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? uniqueId = null,
  }) {
    return _then(_$_NormalPiece(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as BoardEntity,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NormalPiece implements _NormalPiece {
  _$_NormalPiece({required this.entity, required this.uniqueId});

  @override
  final BoardEntity entity;
  @override
  final String uniqueId;

  @override
  String toString() {
    return 'AnimationTypeEntity.piece(entity: $entity, uniqueId: $uniqueId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NormalPiece &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, uniqueId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NormalPieceCopyWith<_$_NormalPiece> get copyWith =>
      __$$_NormalPieceCopyWithImpl<_$_NormalPiece>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BoardEntity entity, String uniqueId) piece,
    required TResult Function(String uniqueId, BoardEntity entity,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceChangePosition,
    required TResult Function(BoardEntity entity, String uniqueId,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceMakeAttack,
  }) {
    return piece(entity, uniqueId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BoardEntity entity, String uniqueId)? piece,
    TResult? Function(String uniqueId, BoardEntity entity,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangePosition,
    TResult? Function(BoardEntity entity, String uniqueId,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakeAttack,
  }) {
    return piece?.call(entity, uniqueId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BoardEntity entity, String uniqueId)? piece,
    TResult Function(String uniqueId, BoardEntity entity,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangePosition,
    TResult Function(BoardEntity entity, String uniqueId,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakeAttack,
    required TResult orElse(),
  }) {
    if (piece != null) {
      return piece(entity, uniqueId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NormalPiece value) piece,
    required TResult Function(_PieceChangePosition value) pieceChangePosition,
    required TResult Function(_PieceAttackMove value) pieceMakeAttack,
  }) {
    return piece(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NormalPiece value)? piece,
    TResult? Function(_PieceChangePosition value)? pieceChangePosition,
    TResult? Function(_PieceAttackMove value)? pieceMakeAttack,
  }) {
    return piece?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NormalPiece value)? piece,
    TResult Function(_PieceChangePosition value)? pieceChangePosition,
    TResult Function(_PieceAttackMove value)? pieceMakeAttack,
    required TResult orElse(),
  }) {
    if (piece != null) {
      return piece(this);
    }
    return orElse();
  }
}

abstract class _NormalPiece implements AnimationTypeEntity {
  factory _NormalPiece(
      {required final BoardEntity entity,
      required final String uniqueId}) = _$_NormalPiece;

  @override
  BoardEntity get entity;
  @override
  String get uniqueId;
  @override
  @JsonKey(ignore: true)
  _$$_NormalPieceCopyWith<_$_NormalPiece> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PieceChangePositionCopyWith<$Res>
    implements $AnimationTypeEntityCopyWith<$Res> {
  factory _$$_PieceChangePositionCopyWith(_$_PieceChangePosition value,
          $Res Function(_$_PieceChangePosition) then) =
      __$$_PieceChangePositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uniqueId,
      BoardEntity entity,
      Coordenate originCoordenate,
      Coordenate destinyCoordenate});
}

/// @nodoc
class __$$_PieceChangePositionCopyWithImpl<$Res>
    extends _$AnimationTypeEntityCopyWithImpl<$Res, _$_PieceChangePosition>
    implements _$$_PieceChangePositionCopyWith<$Res> {
  __$$_PieceChangePositionCopyWithImpl(_$_PieceChangePosition _value,
      $Res Function(_$_PieceChangePosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueId = null,
    Object? entity = null,
    Object? originCoordenate = null,
    Object? destinyCoordenate = null,
  }) {
    return _then(_$_PieceChangePosition(
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as BoardEntity,
      originCoordenate: null == originCoordenate
          ? _value.originCoordenate
          : originCoordenate // ignore: cast_nullable_to_non_nullable
              as Coordenate,
      destinyCoordenate: null == destinyCoordenate
          ? _value.destinyCoordenate
          : destinyCoordenate // ignore: cast_nullable_to_non_nullable
              as Coordenate,
    ));
  }
}

/// @nodoc

class _$_PieceChangePosition implements _PieceChangePosition {
  const _$_PieceChangePosition(
      {required this.uniqueId,
      required this.entity,
      required this.originCoordenate,
      required this.destinyCoordenate});

  @override
  final String uniqueId;
  @override
  final BoardEntity entity;
  @override
  final Coordenate originCoordenate;
  @override
  final Coordenate destinyCoordenate;

  @override
  String toString() {
    return 'AnimationTypeEntity.pieceChangePosition(uniqueId: $uniqueId, entity: $entity, originCoordenate: $originCoordenate, destinyCoordenate: $destinyCoordenate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PieceChangePosition &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.originCoordenate, originCoordenate) ||
                other.originCoordenate == originCoordenate) &&
            (identical(other.destinyCoordenate, destinyCoordenate) ||
                other.destinyCoordenate == destinyCoordenate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, uniqueId, entity, originCoordenate, destinyCoordenate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PieceChangePositionCopyWith<_$_PieceChangePosition> get copyWith =>
      __$$_PieceChangePositionCopyWithImpl<_$_PieceChangePosition>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BoardEntity entity, String uniqueId) piece,
    required TResult Function(String uniqueId, BoardEntity entity,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceChangePosition,
    required TResult Function(BoardEntity entity, String uniqueId,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceMakeAttack,
  }) {
    return pieceChangePosition(
        uniqueId, entity, originCoordenate, destinyCoordenate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BoardEntity entity, String uniqueId)? piece,
    TResult? Function(String uniqueId, BoardEntity entity,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangePosition,
    TResult? Function(BoardEntity entity, String uniqueId,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakeAttack,
  }) {
    return pieceChangePosition?.call(
        uniqueId, entity, originCoordenate, destinyCoordenate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BoardEntity entity, String uniqueId)? piece,
    TResult Function(String uniqueId, BoardEntity entity,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangePosition,
    TResult Function(BoardEntity entity, String uniqueId,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakeAttack,
    required TResult orElse(),
  }) {
    if (pieceChangePosition != null) {
      return pieceChangePosition(
          uniqueId, entity, originCoordenate, destinyCoordenate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NormalPiece value) piece,
    required TResult Function(_PieceChangePosition value) pieceChangePosition,
    required TResult Function(_PieceAttackMove value) pieceMakeAttack,
  }) {
    return pieceChangePosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NormalPiece value)? piece,
    TResult? Function(_PieceChangePosition value)? pieceChangePosition,
    TResult? Function(_PieceAttackMove value)? pieceMakeAttack,
  }) {
    return pieceChangePosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NormalPiece value)? piece,
    TResult Function(_PieceChangePosition value)? pieceChangePosition,
    TResult Function(_PieceAttackMove value)? pieceMakeAttack,
    required TResult orElse(),
  }) {
    if (pieceChangePosition != null) {
      return pieceChangePosition(this);
    }
    return orElse();
  }
}

abstract class _PieceChangePosition implements AnimationTypeEntity {
  const factory _PieceChangePosition(
      {required final String uniqueId,
      required final BoardEntity entity,
      required final Coordenate originCoordenate,
      required final Coordenate destinyCoordenate}) = _$_PieceChangePosition;

  @override
  String get uniqueId;
  @override
  BoardEntity get entity;
  Coordenate get originCoordenate;
  Coordenate get destinyCoordenate;
  @override
  @JsonKey(ignore: true)
  _$$_PieceChangePositionCopyWith<_$_PieceChangePosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PieceAttackMoveCopyWith<$Res>
    implements $AnimationTypeEntityCopyWith<$Res> {
  factory _$$_PieceAttackMoveCopyWith(
          _$_PieceAttackMove value, $Res Function(_$_PieceAttackMove) then) =
      __$$_PieceAttackMoveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BoardEntity entity,
      String uniqueId,
      Coordenate originCoordenate,
      Coordenate destinyCoordenate});
}

/// @nodoc
class __$$_PieceAttackMoveCopyWithImpl<$Res>
    extends _$AnimationTypeEntityCopyWithImpl<$Res, _$_PieceAttackMove>
    implements _$$_PieceAttackMoveCopyWith<$Res> {
  __$$_PieceAttackMoveCopyWithImpl(
      _$_PieceAttackMove _value, $Res Function(_$_PieceAttackMove) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? uniqueId = null,
    Object? originCoordenate = null,
    Object? destinyCoordenate = null,
  }) {
    return _then(_$_PieceAttackMove(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as BoardEntity,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      originCoordenate: null == originCoordenate
          ? _value.originCoordenate
          : originCoordenate // ignore: cast_nullable_to_non_nullable
              as Coordenate,
      destinyCoordenate: null == destinyCoordenate
          ? _value.destinyCoordenate
          : destinyCoordenate // ignore: cast_nullable_to_non_nullable
              as Coordenate,
    ));
  }
}

/// @nodoc

class _$_PieceAttackMove implements _PieceAttackMove {
  const _$_PieceAttackMove(
      {required this.entity,
      required this.uniqueId,
      required this.originCoordenate,
      required this.destinyCoordenate});

  @override
  final BoardEntity entity;
  @override
  final String uniqueId;
  @override
  final Coordenate originCoordenate;
  @override
  final Coordenate destinyCoordenate;

  @override
  String toString() {
    return 'AnimationTypeEntity.pieceMakeAttack(entity: $entity, uniqueId: $uniqueId, originCoordenate: $originCoordenate, destinyCoordenate: $destinyCoordenate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PieceAttackMove &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId) &&
            (identical(other.originCoordenate, originCoordenate) ||
                other.originCoordenate == originCoordenate) &&
            (identical(other.destinyCoordenate, destinyCoordenate) ||
                other.destinyCoordenate == destinyCoordenate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, entity, uniqueId, originCoordenate, destinyCoordenate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PieceAttackMoveCopyWith<_$_PieceAttackMove> get copyWith =>
      __$$_PieceAttackMoveCopyWithImpl<_$_PieceAttackMove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BoardEntity entity, String uniqueId) piece,
    required TResult Function(String uniqueId, BoardEntity entity,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceChangePosition,
    required TResult Function(BoardEntity entity, String uniqueId,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceMakeAttack,
  }) {
    return pieceMakeAttack(
        entity, uniqueId, originCoordenate, destinyCoordenate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BoardEntity entity, String uniqueId)? piece,
    TResult? Function(String uniqueId, BoardEntity entity,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangePosition,
    TResult? Function(BoardEntity entity, String uniqueId,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakeAttack,
  }) {
    return pieceMakeAttack?.call(
        entity, uniqueId, originCoordenate, destinyCoordenate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BoardEntity entity, String uniqueId)? piece,
    TResult Function(String uniqueId, BoardEntity entity,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangePosition,
    TResult Function(BoardEntity entity, String uniqueId,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakeAttack,
    required TResult orElse(),
  }) {
    if (pieceMakeAttack != null) {
      return pieceMakeAttack(
          entity, uniqueId, originCoordenate, destinyCoordenate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NormalPiece value) piece,
    required TResult Function(_PieceChangePosition value) pieceChangePosition,
    required TResult Function(_PieceAttackMove value) pieceMakeAttack,
  }) {
    return pieceMakeAttack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NormalPiece value)? piece,
    TResult? Function(_PieceChangePosition value)? pieceChangePosition,
    TResult? Function(_PieceAttackMove value)? pieceMakeAttack,
  }) {
    return pieceMakeAttack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NormalPiece value)? piece,
    TResult Function(_PieceChangePosition value)? pieceChangePosition,
    TResult Function(_PieceAttackMove value)? pieceMakeAttack,
    required TResult orElse(),
  }) {
    if (pieceMakeAttack != null) {
      return pieceMakeAttack(this);
    }
    return orElse();
  }
}

abstract class _PieceAttackMove implements AnimationTypeEntity {
  const factory _PieceAttackMove(
      {required final BoardEntity entity,
      required final String uniqueId,
      required final Coordenate originCoordenate,
      required final Coordenate destinyCoordenate}) = _$_PieceAttackMove;

  @override
  BoardEntity get entity;
  @override
  String get uniqueId;
  Coordenate get originCoordenate;
  Coordenate get destinyCoordenate;
  @override
  @JsonKey(ignore: true)
  _$$_PieceAttackMoveCopyWith<_$_PieceAttackMove> get copyWith =>
      throw _privateConstructorUsedError;
}
