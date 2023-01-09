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
  /// The id of the user that can control the piece
  String get pieceOwnerId => throw _privateConstructorUsedError;

  /// The [coordenate] that indicate where is the [piece]
  Coordenate get coordenate => throw _privateConstructorUsedError;

  /// The [piece] that is in the [coordenate]
  PieceState get pieceState => throw _privateConstructorUsedError;
  String get boardId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pieceOwnerId, Coordenate coordenate,
            PieceState pieceState, String boardId)
        piece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pieceOwnerId, Coordenate coordenate,
            PieceState pieceState, String boardId)?
        piece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pieceOwnerId, Coordenate coordenate,
            PieceState pieceState, String boardId)?
        piece,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoardPieceEntity value) piece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoardPieceEntity value)? piece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoardPieceEntity value)? piece,
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
  $Res call(
      {String pieceOwnerId,
      Coordenate coordenate,
      PieceState pieceState,
      String boardId});

  $PieceStateCopyWith<$Res> get pieceState;
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
    Object? pieceOwnerId = null,
    Object? coordenate = null,
    Object? pieceState = null,
    Object? boardId = null,
  }) {
    return _then(_value.copyWith(
      pieceOwnerId: null == pieceOwnerId
          ? _value.pieceOwnerId
          : pieceOwnerId // ignore: cast_nullable_to_non_nullable
              as String,
      coordenate: null == coordenate
          ? _value.coordenate
          : coordenate // ignore: cast_nullable_to_non_nullable
              as Coordenate,
      pieceState: null == pieceState
          ? _value.pieceState
          : pieceState // ignore: cast_nullable_to_non_nullable
              as PieceState,
      boardId: null == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PieceStateCopyWith<$Res> get pieceState {
    return $PieceStateCopyWith<$Res>(_value.pieceState, (value) {
      return _then(_value.copyWith(pieceState: value) as $Val);
    });
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
      {String pieceOwnerId,
      Coordenate coordenate,
      PieceState pieceState,
      String boardId});

  @override
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
    Object? pieceOwnerId = null,
    Object? coordenate = null,
    Object? pieceState = null,
    Object? boardId = null,
  }) {
    return _then(_$BoardPieceEntity(
      pieceOwnerId: null == pieceOwnerId
          ? _value.pieceOwnerId
          : pieceOwnerId // ignore: cast_nullable_to_non_nullable
              as String,
      coordenate: null == coordenate
          ? _value.coordenate
          : coordenate // ignore: cast_nullable_to_non_nullable
              as Coordenate,
      pieceState: null == pieceState
          ? _value.pieceState
          : pieceState // ignore: cast_nullable_to_non_nullable
              as PieceState,
      boardId: null == boardId
          ? _value.boardId
          : boardId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BoardPieceEntity implements BoardPieceEntity {
  const _$BoardPieceEntity(
      {required this.pieceOwnerId,
      required this.coordenate,
      required this.pieceState,
      required this.boardId});

  /// The id of the user that can control the piece
  @override
  final String pieceOwnerId;

  /// The [coordenate] that indicate where is the [piece]
  @override
  final Coordenate coordenate;

  /// The [piece] that is in the [coordenate]
  @override
  final PieceState pieceState;
  @override
  final String boardId;

  @override
  String toString() {
    return 'BoardFieldEntity.piece(pieceOwnerId: $pieceOwnerId, coordenate: $coordenate, pieceState: $pieceState, boardId: $boardId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardPieceEntity &&
            (identical(other.pieceOwnerId, pieceOwnerId) ||
                other.pieceOwnerId == pieceOwnerId) &&
            (identical(other.coordenate, coordenate) ||
                other.coordenate == coordenate) &&
            (identical(other.pieceState, pieceState) ||
                other.pieceState == pieceState) &&
            (identical(other.boardId, boardId) || other.boardId == boardId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pieceOwnerId, coordenate, pieceState, boardId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardPieceEntityCopyWith<_$BoardPieceEntity> get copyWith =>
      __$$BoardPieceEntityCopyWithImpl<_$BoardPieceEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pieceOwnerId, Coordenate coordenate,
            PieceState pieceState, String boardId)
        piece,
  }) {
    return piece(pieceOwnerId, coordenate, pieceState, boardId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pieceOwnerId, Coordenate coordenate,
            PieceState pieceState, String boardId)?
        piece,
  }) {
    return piece?.call(pieceOwnerId, coordenate, pieceState, boardId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pieceOwnerId, Coordenate coordenate,
            PieceState pieceState, String boardId)?
        piece,
    required TResult orElse(),
  }) {
    if (piece != null) {
      return piece(pieceOwnerId, coordenate, pieceState, boardId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoardPieceEntity value) piece,
  }) {
    return piece(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoardPieceEntity value)? piece,
  }) {
    return piece?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoardPieceEntity value)? piece,
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
      {required final String pieceOwnerId,
      required final Coordenate coordenate,
      required final PieceState pieceState,
      required final String boardId}) = _$BoardPieceEntity;

  @override

  /// The id of the user that can control the piece
  String get pieceOwnerId;
  @override

  /// The [coordenate] that indicate where is the [piece]
  Coordenate get coordenate;
  @override

  /// The [piece] that is in the [coordenate]
  PieceState get pieceState;
  @override
  String get boardId;
  @override
  @JsonKey(ignore: true)
  _$$BoardPieceEntityCopyWith<_$BoardPieceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
