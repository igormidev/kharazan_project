// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'piece_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PieceState {
  PieceEntity get piece => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PieceEntity piece) normal,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceChangingPosition,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceMakingFatalAttack,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceMakingNonFatalAttack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PieceEntity piece)? normal,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangingPosition,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingFatalAttack,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingNonFatalAttack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PieceEntity piece)? normal,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangingPosition,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingFatalAttack,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingNonFatalAttack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultPiece value) normal,
    required TResult Function(_PieceChangePosition value) pieceChangingPosition,
    required TResult Function(_PieceAttackMove value) pieceMakingFatalAttack,
    required TResult Function(_PieceNonFatalAttackMove value)
        pieceMakingNonFatalAttack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultPiece value)? normal,
    TResult? Function(_PieceChangePosition value)? pieceChangingPosition,
    TResult? Function(_PieceAttackMove value)? pieceMakingFatalAttack,
    TResult? Function(_PieceNonFatalAttackMove value)?
        pieceMakingNonFatalAttack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultPiece value)? normal,
    TResult Function(_PieceChangePosition value)? pieceChangingPosition,
    TResult Function(_PieceAttackMove value)? pieceMakingFatalAttack,
    TResult Function(_PieceNonFatalAttackMove value)? pieceMakingNonFatalAttack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PieceStateCopyWith<PieceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PieceStateCopyWith<$Res> {
  factory $PieceStateCopyWith(
          PieceState value, $Res Function(PieceState) then) =
      _$PieceStateCopyWithImpl<$Res, PieceState>;
  @useResult
  $Res call({PieceEntity piece});
}

/// @nodoc
class _$PieceStateCopyWithImpl<$Res, $Val extends PieceState>
    implements $PieceStateCopyWith<$Res> {
  _$PieceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? piece = null,
  }) {
    return _then(_value.copyWith(
      piece: null == piece
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as PieceEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DefaultPieceCopyWith<$Res>
    implements $PieceStateCopyWith<$Res> {
  factory _$$_DefaultPieceCopyWith(
          _$_DefaultPiece value, $Res Function(_$_DefaultPiece) then) =
      __$$_DefaultPieceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PieceEntity piece});
}

/// @nodoc
class __$$_DefaultPieceCopyWithImpl<$Res>
    extends _$PieceStateCopyWithImpl<$Res, _$_DefaultPiece>
    implements _$$_DefaultPieceCopyWith<$Res> {
  __$$_DefaultPieceCopyWithImpl(
      _$_DefaultPiece _value, $Res Function(_$_DefaultPiece) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? piece = null,
  }) {
    return _then(_$_DefaultPiece(
      piece: null == piece
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as PieceEntity,
    ));
  }
}

/// @nodoc

class _$_DefaultPiece implements _DefaultPiece {
  const _$_DefaultPiece({required this.piece});

  @override
  final PieceEntity piece;

  @override
  String toString() {
    return 'PieceState.normal(piece: $piece)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefaultPiece &&
            (identical(other.piece, piece) || other.piece == piece));
  }

  @override
  int get hashCode => Object.hash(runtimeType, piece);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DefaultPieceCopyWith<_$_DefaultPiece> get copyWith =>
      __$$_DefaultPieceCopyWithImpl<_$_DefaultPiece>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PieceEntity piece) normal,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceChangingPosition,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceMakingFatalAttack,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceMakingNonFatalAttack,
  }) {
    return normal(piece);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PieceEntity piece)? normal,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangingPosition,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingFatalAttack,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingNonFatalAttack,
  }) {
    return normal?.call(piece);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PieceEntity piece)? normal,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangingPosition,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingFatalAttack,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingNonFatalAttack,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(piece);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultPiece value) normal,
    required TResult Function(_PieceChangePosition value) pieceChangingPosition,
    required TResult Function(_PieceAttackMove value) pieceMakingFatalAttack,
    required TResult Function(_PieceNonFatalAttackMove value)
        pieceMakingNonFatalAttack,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultPiece value)? normal,
    TResult? Function(_PieceChangePosition value)? pieceChangingPosition,
    TResult? Function(_PieceAttackMove value)? pieceMakingFatalAttack,
    TResult? Function(_PieceNonFatalAttackMove value)?
        pieceMakingNonFatalAttack,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultPiece value)? normal,
    TResult Function(_PieceChangePosition value)? pieceChangingPosition,
    TResult Function(_PieceAttackMove value)? pieceMakingFatalAttack,
    TResult Function(_PieceNonFatalAttackMove value)? pieceMakingNonFatalAttack,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class _DefaultPiece implements PieceState {
  const factory _DefaultPiece({required final PieceEntity piece}) =
      _$_DefaultPiece;

  @override
  PieceEntity get piece;
  @override
  @JsonKey(ignore: true)
  _$$_DefaultPieceCopyWith<_$_DefaultPiece> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PieceChangePositionCopyWith<$Res>
    implements $PieceStateCopyWith<$Res> {
  factory _$$_PieceChangePositionCopyWith(_$_PieceChangePosition value,
          $Res Function(_$_PieceChangePosition) then) =
      __$$_PieceChangePositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PieceEntity piece,
      Duration animationTime,
      Coordenate originCoordenate,
      Coordenate destinyCoordenate});
}

/// @nodoc
class __$$_PieceChangePositionCopyWithImpl<$Res>
    extends _$PieceStateCopyWithImpl<$Res, _$_PieceChangePosition>
    implements _$$_PieceChangePositionCopyWith<$Res> {
  __$$_PieceChangePositionCopyWithImpl(_$_PieceChangePosition _value,
      $Res Function(_$_PieceChangePosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? piece = null,
    Object? animationTime = null,
    Object? originCoordenate = null,
    Object? destinyCoordenate = null,
  }) {
    return _then(_$_PieceChangePosition(
      piece: null == piece
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as PieceEntity,
      animationTime: null == animationTime
          ? _value.animationTime
          : animationTime // ignore: cast_nullable_to_non_nullable
              as Duration,
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
      {required this.piece,
      required this.animationTime,
      required this.originCoordenate,
      required this.destinyCoordenate});

  @override
  final PieceEntity piece;
  @override
  final Duration animationTime;
  @override
  final Coordenate originCoordenate;
  @override
  final Coordenate destinyCoordenate;

  @override
  String toString() {
    return 'PieceState.pieceChangingPosition(piece: $piece, animationTime: $animationTime, originCoordenate: $originCoordenate, destinyCoordenate: $destinyCoordenate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PieceChangePosition &&
            (identical(other.piece, piece) || other.piece == piece) &&
            (identical(other.animationTime, animationTime) ||
                other.animationTime == animationTime) &&
            (identical(other.originCoordenate, originCoordenate) ||
                other.originCoordenate == originCoordenate) &&
            (identical(other.destinyCoordenate, destinyCoordenate) ||
                other.destinyCoordenate == destinyCoordenate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, piece, animationTime, originCoordenate, destinyCoordenate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PieceChangePositionCopyWith<_$_PieceChangePosition> get copyWith =>
      __$$_PieceChangePositionCopyWithImpl<_$_PieceChangePosition>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PieceEntity piece) normal,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceChangingPosition,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceMakingFatalAttack,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceMakingNonFatalAttack,
  }) {
    return pieceChangingPosition(
        piece, animationTime, originCoordenate, destinyCoordenate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PieceEntity piece)? normal,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangingPosition,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingFatalAttack,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingNonFatalAttack,
  }) {
    return pieceChangingPosition?.call(
        piece, animationTime, originCoordenate, destinyCoordenate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PieceEntity piece)? normal,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangingPosition,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingFatalAttack,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingNonFatalAttack,
    required TResult orElse(),
  }) {
    if (pieceChangingPosition != null) {
      return pieceChangingPosition(
          piece, animationTime, originCoordenate, destinyCoordenate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultPiece value) normal,
    required TResult Function(_PieceChangePosition value) pieceChangingPosition,
    required TResult Function(_PieceAttackMove value) pieceMakingFatalAttack,
    required TResult Function(_PieceNonFatalAttackMove value)
        pieceMakingNonFatalAttack,
  }) {
    return pieceChangingPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultPiece value)? normal,
    TResult? Function(_PieceChangePosition value)? pieceChangingPosition,
    TResult? Function(_PieceAttackMove value)? pieceMakingFatalAttack,
    TResult? Function(_PieceNonFatalAttackMove value)?
        pieceMakingNonFatalAttack,
  }) {
    return pieceChangingPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultPiece value)? normal,
    TResult Function(_PieceChangePosition value)? pieceChangingPosition,
    TResult Function(_PieceAttackMove value)? pieceMakingFatalAttack,
    TResult Function(_PieceNonFatalAttackMove value)? pieceMakingNonFatalAttack,
    required TResult orElse(),
  }) {
    if (pieceChangingPosition != null) {
      return pieceChangingPosition(this);
    }
    return orElse();
  }
}

abstract class _PieceChangePosition implements PieceState {
  const factory _PieceChangePosition(
      {required final PieceEntity piece,
      required final Duration animationTime,
      required final Coordenate originCoordenate,
      required final Coordenate destinyCoordenate}) = _$_PieceChangePosition;

  @override
  PieceEntity get piece;
  Duration get animationTime;
  Coordenate get originCoordenate;
  Coordenate get destinyCoordenate;
  @override
  @JsonKey(ignore: true)
  _$$_PieceChangePositionCopyWith<_$_PieceChangePosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PieceAttackMoveCopyWith<$Res>
    implements $PieceStateCopyWith<$Res> {
  factory _$$_PieceAttackMoveCopyWith(
          _$_PieceAttackMove value, $Res Function(_$_PieceAttackMove) then) =
      __$$_PieceAttackMoveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PieceEntity piece,
      Duration animationTime,
      Coordenate originCoordenate,
      Coordenate destinyCoordenate});
}

/// @nodoc
class __$$_PieceAttackMoveCopyWithImpl<$Res>
    extends _$PieceStateCopyWithImpl<$Res, _$_PieceAttackMove>
    implements _$$_PieceAttackMoveCopyWith<$Res> {
  __$$_PieceAttackMoveCopyWithImpl(
      _$_PieceAttackMove _value, $Res Function(_$_PieceAttackMove) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? piece = null,
    Object? animationTime = null,
    Object? originCoordenate = null,
    Object? destinyCoordenate = null,
  }) {
    return _then(_$_PieceAttackMove(
      piece: null == piece
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as PieceEntity,
      animationTime: null == animationTime
          ? _value.animationTime
          : animationTime // ignore: cast_nullable_to_non_nullable
              as Duration,
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
      {required this.piece,
      required this.animationTime,
      required this.originCoordenate,
      required this.destinyCoordenate});

  @override
  final PieceEntity piece;
  @override
  final Duration animationTime;
  @override
  final Coordenate originCoordenate;
  @override
  final Coordenate destinyCoordenate;

  @override
  String toString() {
    return 'PieceState.pieceMakingFatalAttack(piece: $piece, animationTime: $animationTime, originCoordenate: $originCoordenate, destinyCoordenate: $destinyCoordenate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PieceAttackMove &&
            (identical(other.piece, piece) || other.piece == piece) &&
            (identical(other.animationTime, animationTime) ||
                other.animationTime == animationTime) &&
            (identical(other.originCoordenate, originCoordenate) ||
                other.originCoordenate == originCoordenate) &&
            (identical(other.destinyCoordenate, destinyCoordenate) ||
                other.destinyCoordenate == destinyCoordenate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, piece, animationTime, originCoordenate, destinyCoordenate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PieceAttackMoveCopyWith<_$_PieceAttackMove> get copyWith =>
      __$$_PieceAttackMoveCopyWithImpl<_$_PieceAttackMove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PieceEntity piece) normal,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceChangingPosition,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceMakingFatalAttack,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceMakingNonFatalAttack,
  }) {
    return pieceMakingFatalAttack(
        piece, animationTime, originCoordenate, destinyCoordenate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PieceEntity piece)? normal,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangingPosition,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingFatalAttack,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingNonFatalAttack,
  }) {
    return pieceMakingFatalAttack?.call(
        piece, animationTime, originCoordenate, destinyCoordenate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PieceEntity piece)? normal,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangingPosition,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingFatalAttack,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingNonFatalAttack,
    required TResult orElse(),
  }) {
    if (pieceMakingFatalAttack != null) {
      return pieceMakingFatalAttack(
          piece, animationTime, originCoordenate, destinyCoordenate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultPiece value) normal,
    required TResult Function(_PieceChangePosition value) pieceChangingPosition,
    required TResult Function(_PieceAttackMove value) pieceMakingFatalAttack,
    required TResult Function(_PieceNonFatalAttackMove value)
        pieceMakingNonFatalAttack,
  }) {
    return pieceMakingFatalAttack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultPiece value)? normal,
    TResult? Function(_PieceChangePosition value)? pieceChangingPosition,
    TResult? Function(_PieceAttackMove value)? pieceMakingFatalAttack,
    TResult? Function(_PieceNonFatalAttackMove value)?
        pieceMakingNonFatalAttack,
  }) {
    return pieceMakingFatalAttack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultPiece value)? normal,
    TResult Function(_PieceChangePosition value)? pieceChangingPosition,
    TResult Function(_PieceAttackMove value)? pieceMakingFatalAttack,
    TResult Function(_PieceNonFatalAttackMove value)? pieceMakingNonFatalAttack,
    required TResult orElse(),
  }) {
    if (pieceMakingFatalAttack != null) {
      return pieceMakingFatalAttack(this);
    }
    return orElse();
  }
}

abstract class _PieceAttackMove implements PieceState {
  const factory _PieceAttackMove(
      {required final PieceEntity piece,
      required final Duration animationTime,
      required final Coordenate originCoordenate,
      required final Coordenate destinyCoordenate}) = _$_PieceAttackMove;

  @override
  PieceEntity get piece;
  Duration get animationTime;
  Coordenate get originCoordenate;
  Coordenate get destinyCoordenate;
  @override
  @JsonKey(ignore: true)
  _$$_PieceAttackMoveCopyWith<_$_PieceAttackMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PieceNonFatalAttackMoveCopyWith<$Res>
    implements $PieceStateCopyWith<$Res> {
  factory _$$_PieceNonFatalAttackMoveCopyWith(_$_PieceNonFatalAttackMove value,
          $Res Function(_$_PieceNonFatalAttackMove) then) =
      __$$_PieceNonFatalAttackMoveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PieceEntity piece,
      Duration animationTime,
      Coordenate originCoordenate,
      Coordenate destinyCoordenate});
}

/// @nodoc
class __$$_PieceNonFatalAttackMoveCopyWithImpl<$Res>
    extends _$PieceStateCopyWithImpl<$Res, _$_PieceNonFatalAttackMove>
    implements _$$_PieceNonFatalAttackMoveCopyWith<$Res> {
  __$$_PieceNonFatalAttackMoveCopyWithImpl(_$_PieceNonFatalAttackMove _value,
      $Res Function(_$_PieceNonFatalAttackMove) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? piece = null,
    Object? animationTime = null,
    Object? originCoordenate = null,
    Object? destinyCoordenate = null,
  }) {
    return _then(_$_PieceNonFatalAttackMove(
      piece: null == piece
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as PieceEntity,
      animationTime: null == animationTime
          ? _value.animationTime
          : animationTime // ignore: cast_nullable_to_non_nullable
              as Duration,
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

class _$_PieceNonFatalAttackMove implements _PieceNonFatalAttackMove {
  const _$_PieceNonFatalAttackMove(
      {required this.piece,
      required this.animationTime,
      required this.originCoordenate,
      required this.destinyCoordenate});

  @override
  final PieceEntity piece;
  @override
  final Duration animationTime;
  @override
  final Coordenate originCoordenate;
  @override
  final Coordenate destinyCoordenate;

  @override
  String toString() {
    return 'PieceState.pieceMakingNonFatalAttack(piece: $piece, animationTime: $animationTime, originCoordenate: $originCoordenate, destinyCoordenate: $destinyCoordenate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PieceNonFatalAttackMove &&
            (identical(other.piece, piece) || other.piece == piece) &&
            (identical(other.animationTime, animationTime) ||
                other.animationTime == animationTime) &&
            (identical(other.originCoordenate, originCoordenate) ||
                other.originCoordenate == originCoordenate) &&
            (identical(other.destinyCoordenate, destinyCoordenate) ||
                other.destinyCoordenate == destinyCoordenate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, piece, animationTime, originCoordenate, destinyCoordenate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PieceNonFatalAttackMoveCopyWith<_$_PieceNonFatalAttackMove>
      get copyWith =>
          __$$_PieceNonFatalAttackMoveCopyWithImpl<_$_PieceNonFatalAttackMove>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PieceEntity piece) normal,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceChangingPosition,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceMakingFatalAttack,
    required TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)
        pieceMakingNonFatalAttack,
  }) {
    return pieceMakingNonFatalAttack(
        piece, animationTime, originCoordenate, destinyCoordenate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PieceEntity piece)? normal,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangingPosition,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingFatalAttack,
    TResult? Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingNonFatalAttack,
  }) {
    return pieceMakingNonFatalAttack?.call(
        piece, animationTime, originCoordenate, destinyCoordenate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PieceEntity piece)? normal,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceChangingPosition,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingFatalAttack,
    TResult Function(PieceEntity piece, Duration animationTime,
            Coordenate originCoordenate, Coordenate destinyCoordenate)?
        pieceMakingNonFatalAttack,
    required TResult orElse(),
  }) {
    if (pieceMakingNonFatalAttack != null) {
      return pieceMakingNonFatalAttack(
          piece, animationTime, originCoordenate, destinyCoordenate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultPiece value) normal,
    required TResult Function(_PieceChangePosition value) pieceChangingPosition,
    required TResult Function(_PieceAttackMove value) pieceMakingFatalAttack,
    required TResult Function(_PieceNonFatalAttackMove value)
        pieceMakingNonFatalAttack,
  }) {
    return pieceMakingNonFatalAttack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultPiece value)? normal,
    TResult? Function(_PieceChangePosition value)? pieceChangingPosition,
    TResult? Function(_PieceAttackMove value)? pieceMakingFatalAttack,
    TResult? Function(_PieceNonFatalAttackMove value)?
        pieceMakingNonFatalAttack,
  }) {
    return pieceMakingNonFatalAttack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultPiece value)? normal,
    TResult Function(_PieceChangePosition value)? pieceChangingPosition,
    TResult Function(_PieceAttackMove value)? pieceMakingFatalAttack,
    TResult Function(_PieceNonFatalAttackMove value)? pieceMakingNonFatalAttack,
    required TResult orElse(),
  }) {
    if (pieceMakingNonFatalAttack != null) {
      return pieceMakingNonFatalAttack(this);
    }
    return orElse();
  }
}

abstract class _PieceNonFatalAttackMove implements PieceState {
  const factory _PieceNonFatalAttackMove(
          {required final PieceEntity piece,
          required final Duration animationTime,
          required final Coordenate originCoordenate,
          required final Coordenate destinyCoordenate}) =
      _$_PieceNonFatalAttackMove;

  @override
  PieceEntity get piece;
  Duration get animationTime;
  Coordenate get originCoordenate;
  Coordenate get destinyCoordenate;
  @override
  @JsonKey(ignore: true)
  _$$_PieceNonFatalAttackMoveCopyWith<_$_PieceNonFatalAttackMove>
      get copyWith => throw _privateConstructorUsedError;
}
