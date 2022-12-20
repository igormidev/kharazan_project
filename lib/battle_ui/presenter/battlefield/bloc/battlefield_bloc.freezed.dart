// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'battlefield_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BattlefieldEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerThatMakedMove, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)
        updateBoardStateAfterMove,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(BoardPieceEntity piece) pieceSelectedInCoordenate,
    required TResult Function() unSelectPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult? Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult? Function()? unSelectPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult Function()? unSelectPiece,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_UpdateBoardStateAfterMove value)
        updateBoardStateAfterMove,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
    required TResult Function(_UnSelectPiece value) unSelectPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult? Function(_UnSelectPiece value)? unSelectPiece,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult Function(_UnSelectPiece value)? unSelectPiece,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattlefieldEventCopyWith<$Res> {
  factory $BattlefieldEventCopyWith(
          BattlefieldEvent value, $Res Function(BattlefieldEvent) then) =
      _$BattlefieldEventCopyWithImpl<$Res, BattlefieldEvent>;
}

/// @nodoc
class _$BattlefieldEventCopyWithImpl<$Res, $Val extends BattlefieldEvent>
    implements $BattlefieldEventCopyWith<$Res> {
  _$BattlefieldEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MakeMoveWithAnimationCopyWith<$Res> {
  factory _$$_MakeMoveWithAnimationCopyWith(_$_MakeMoveWithAnimation value,
          $Res Function(_$_MakeMoveWithAnimation) then) =
      __$$_MakeMoveWithAnimationCopyWithImpl<$Res>;
  @useResult
  $Res call({String playerThatMakedMove, String moveMaded});
}

/// @nodoc
class __$$_MakeMoveWithAnimationCopyWithImpl<$Res>
    extends _$BattlefieldEventCopyWithImpl<$Res, _$_MakeMoveWithAnimation>
    implements _$$_MakeMoveWithAnimationCopyWith<$Res> {
  __$$_MakeMoveWithAnimationCopyWithImpl(_$_MakeMoveWithAnimation _value,
      $Res Function(_$_MakeMoveWithAnimation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerThatMakedMove = null,
    Object? moveMaded = null,
  }) {
    return _then(_$_MakeMoveWithAnimation(
      playerThatMakedMove: null == playerThatMakedMove
          ? _value.playerThatMakedMove
          : playerThatMakedMove // ignore: cast_nullable_to_non_nullable
              as String,
      moveMaded: null == moveMaded
          ? _value.moveMaded
          : moveMaded // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MakeMoveWithAnimation implements _MakeMoveWithAnimation {
  const _$_MakeMoveWithAnimation(
      {required this.playerThatMakedMove, required this.moveMaded});

  @override
  final String playerThatMakedMove;
  @override
  final String moveMaded;

  @override
  String toString() {
    return 'BattlefieldEvent.makeMoveWithAnimation(playerThatMakedMove: $playerThatMakedMove, moveMaded: $moveMaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MakeMoveWithAnimation &&
            (identical(other.playerThatMakedMove, playerThatMakedMove) ||
                other.playerThatMakedMove == playerThatMakedMove) &&
            (identical(other.moveMaded, moveMaded) ||
                other.moveMaded == moveMaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerThatMakedMove, moveMaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MakeMoveWithAnimationCopyWith<_$_MakeMoveWithAnimation> get copyWith =>
      __$$_MakeMoveWithAnimationCopyWithImpl<_$_MakeMoveWithAnimation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerThatMakedMove, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)
        updateBoardStateAfterMove,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(BoardPieceEntity piece) pieceSelectedInCoordenate,
    required TResult Function() unSelectPiece,
  }) {
    return makeMoveWithAnimation(playerThatMakedMove, moveMaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult? Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult? Function()? unSelectPiece,
  }) {
    return makeMoveWithAnimation?.call(playerThatMakedMove, moveMaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult Function()? unSelectPiece,
    required TResult orElse(),
  }) {
    if (makeMoveWithAnimation != null) {
      return makeMoveWithAnimation(playerThatMakedMove, moveMaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_UpdateBoardStateAfterMove value)
        updateBoardStateAfterMove,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
    required TResult Function(_UnSelectPiece value) unSelectPiece,
  }) {
    return makeMoveWithAnimation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult? Function(_UnSelectPiece value)? unSelectPiece,
  }) {
    return makeMoveWithAnimation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult Function(_UnSelectPiece value)? unSelectPiece,
    required TResult orElse(),
  }) {
    if (makeMoveWithAnimation != null) {
      return makeMoveWithAnimation(this);
    }
    return orElse();
  }
}

abstract class _MakeMoveWithAnimation implements BattlefieldEvent {
  const factory _MakeMoveWithAnimation(
      {required final String playerThatMakedMove,
      required final String moveMaded}) = _$_MakeMoveWithAnimation;

  String get playerThatMakedMove;
  String get moveMaded;
  @JsonKey(ignore: true)
  _$$_MakeMoveWithAnimationCopyWith<_$_MakeMoveWithAnimation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateBoardStateAfterMoveCopyWith<$Res> {
  factory _$$_UpdateBoardStateAfterMoveCopyWith(
          _$_UpdateBoardStateAfterMove value,
          $Res Function(_$_UpdateBoardStateAfterMove) then) =
      __$$_UpdateBoardStateAfterMoveCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CoordenatesInMove coordenatesInMove,
      String playerUserTurnId,
      List<BoardFieldEntity> boardState,
      List<UserStateEntity> usersInTheMatchState,
      List<MoveAnimationEntity> animationsInMove});
}

/// @nodoc
class __$$_UpdateBoardStateAfterMoveCopyWithImpl<$Res>
    extends _$BattlefieldEventCopyWithImpl<$Res, _$_UpdateBoardStateAfterMove>
    implements _$$_UpdateBoardStateAfterMoveCopyWith<$Res> {
  __$$_UpdateBoardStateAfterMoveCopyWithImpl(
      _$_UpdateBoardStateAfterMove _value,
      $Res Function(_$_UpdateBoardStateAfterMove) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordenatesInMove = null,
    Object? playerUserTurnId = null,
    Object? boardState = null,
    Object? usersInTheMatchState = null,
    Object? animationsInMove = null,
  }) {
    return _then(_$_UpdateBoardStateAfterMove(
      coordenatesInMove: null == coordenatesInMove
          ? _value.coordenatesInMove
          : coordenatesInMove // ignore: cast_nullable_to_non_nullable
              as CoordenatesInMove,
      playerUserTurnId: null == playerUserTurnId
          ? _value.playerUserTurnId
          : playerUserTurnId // ignore: cast_nullable_to_non_nullable
              as String,
      boardState: null == boardState
          ? _value._boardState
          : boardState // ignore: cast_nullable_to_non_nullable
              as List<BoardFieldEntity>,
      usersInTheMatchState: null == usersInTheMatchState
          ? _value._usersInTheMatchState
          : usersInTheMatchState // ignore: cast_nullable_to_non_nullable
              as List<UserStateEntity>,
      animationsInMove: null == animationsInMove
          ? _value._animationsInMove
          : animationsInMove // ignore: cast_nullable_to_non_nullable
              as List<MoveAnimationEntity>,
    ));
  }
}

/// @nodoc

class _$_UpdateBoardStateAfterMove implements _UpdateBoardStateAfterMove {
  const _$_UpdateBoardStateAfterMove(
      {required this.coordenatesInMove,
      required this.playerUserTurnId,
      required final List<BoardFieldEntity> boardState,
      required final List<UserStateEntity> usersInTheMatchState,
      required final List<MoveAnimationEntity> animationsInMove})
      : _boardState = boardState,
        _usersInTheMatchState = usersInTheMatchState,
        _animationsInMove = animationsInMove;

  @override
  final CoordenatesInMove coordenatesInMove;
  @override
  final String playerUserTurnId;
  final List<BoardFieldEntity> _boardState;
  @override
  List<BoardFieldEntity> get boardState {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boardState);
  }

  final List<UserStateEntity> _usersInTheMatchState;
  @override
  List<UserStateEntity> get usersInTheMatchState {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersInTheMatchState);
  }

  final List<MoveAnimationEntity> _animationsInMove;
  @override
  List<MoveAnimationEntity> get animationsInMove {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animationsInMove);
  }

  @override
  String toString() {
    return 'BattlefieldEvent.updateBoardStateAfterMove(coordenatesInMove: $coordenatesInMove, playerUserTurnId: $playerUserTurnId, boardState: $boardState, usersInTheMatchState: $usersInTheMatchState, animationsInMove: $animationsInMove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateBoardStateAfterMove &&
            (identical(other.coordenatesInMove, coordenatesInMove) ||
                other.coordenatesInMove == coordenatesInMove) &&
            (identical(other.playerUserTurnId, playerUserTurnId) ||
                other.playerUserTurnId == playerUserTurnId) &&
            const DeepCollectionEquality()
                .equals(other._boardState, _boardState) &&
            const DeepCollectionEquality()
                .equals(other._usersInTheMatchState, _usersInTheMatchState) &&
            const DeepCollectionEquality()
                .equals(other._animationsInMove, _animationsInMove));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      coordenatesInMove,
      playerUserTurnId,
      const DeepCollectionEquality().hash(_boardState),
      const DeepCollectionEquality().hash(_usersInTheMatchState),
      const DeepCollectionEquality().hash(_animationsInMove));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateBoardStateAfterMoveCopyWith<_$_UpdateBoardStateAfterMove>
      get copyWith => __$$_UpdateBoardStateAfterMoveCopyWithImpl<
          _$_UpdateBoardStateAfterMove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerThatMakedMove, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)
        updateBoardStateAfterMove,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(BoardPieceEntity piece) pieceSelectedInCoordenate,
    required TResult Function() unSelectPiece,
  }) {
    return updateBoardStateAfterMove(coordenatesInMove, playerUserTurnId,
        boardState, usersInTheMatchState, animationsInMove);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult? Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult? Function()? unSelectPiece,
  }) {
    return updateBoardStateAfterMove?.call(coordenatesInMove, playerUserTurnId,
        boardState, usersInTheMatchState, animationsInMove);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult Function()? unSelectPiece,
    required TResult orElse(),
  }) {
    if (updateBoardStateAfterMove != null) {
      return updateBoardStateAfterMove(coordenatesInMove, playerUserTurnId,
          boardState, usersInTheMatchState, animationsInMove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_UpdateBoardStateAfterMove value)
        updateBoardStateAfterMove,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
    required TResult Function(_UnSelectPiece value) unSelectPiece,
  }) {
    return updateBoardStateAfterMove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult? Function(_UnSelectPiece value)? unSelectPiece,
  }) {
    return updateBoardStateAfterMove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult Function(_UnSelectPiece value)? unSelectPiece,
    required TResult orElse(),
  }) {
    if (updateBoardStateAfterMove != null) {
      return updateBoardStateAfterMove(this);
    }
    return orElse();
  }
}

abstract class _UpdateBoardStateAfterMove implements BattlefieldEvent {
  const factory _UpdateBoardStateAfterMove(
          {required final CoordenatesInMove coordenatesInMove,
          required final String playerUserTurnId,
          required final List<BoardFieldEntity> boardState,
          required final List<UserStateEntity> usersInTheMatchState,
          required final List<MoveAnimationEntity> animationsInMove}) =
      _$_UpdateBoardStateAfterMove;

  CoordenatesInMove get coordenatesInMove;
  String get playerUserTurnId;
  List<BoardFieldEntity> get boardState;
  List<UserStateEntity> get usersInTheMatchState;
  List<MoveAnimationEntity> get animationsInMove;
  @JsonKey(ignore: true)
  _$$_UpdateBoardStateAfterMoveCopyWith<_$_UpdateBoardStateAfterMove>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SurrenderCopyWith<$Res> {
  factory _$$_SurrenderCopyWith(
          _$_Surrender value, $Res Function(_$_Surrender) then) =
      __$$_SurrenderCopyWithImpl<$Res>;
  @useResult
  $Res call({String userThatSurrenderID});
}

/// @nodoc
class __$$_SurrenderCopyWithImpl<$Res>
    extends _$BattlefieldEventCopyWithImpl<$Res, _$_Surrender>
    implements _$$_SurrenderCopyWith<$Res> {
  __$$_SurrenderCopyWithImpl(
      _$_Surrender _value, $Res Function(_$_Surrender) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userThatSurrenderID = null,
  }) {
    return _then(_$_Surrender(
      null == userThatSurrenderID
          ? _value.userThatSurrenderID
          : userThatSurrenderID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Surrender implements _Surrender {
  const _$_Surrender(this.userThatSurrenderID);

  @override
  final String userThatSurrenderID;

  @override
  String toString() {
    return 'BattlefieldEvent.surrender(userThatSurrenderID: $userThatSurrenderID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Surrender &&
            (identical(other.userThatSurrenderID, userThatSurrenderID) ||
                other.userThatSurrenderID == userThatSurrenderID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userThatSurrenderID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurrenderCopyWith<_$_Surrender> get copyWith =>
      __$$_SurrenderCopyWithImpl<_$_Surrender>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerThatMakedMove, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)
        updateBoardStateAfterMove,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(BoardPieceEntity piece) pieceSelectedInCoordenate,
    required TResult Function() unSelectPiece,
  }) {
    return surrender(userThatSurrenderID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult? Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult? Function()? unSelectPiece,
  }) {
    return surrender?.call(userThatSurrenderID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult Function()? unSelectPiece,
    required TResult orElse(),
  }) {
    if (surrender != null) {
      return surrender(userThatSurrenderID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_UpdateBoardStateAfterMove value)
        updateBoardStateAfterMove,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
    required TResult Function(_UnSelectPiece value) unSelectPiece,
  }) {
    return surrender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult? Function(_UnSelectPiece value)? unSelectPiece,
  }) {
    return surrender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult Function(_UnSelectPiece value)? unSelectPiece,
    required TResult orElse(),
  }) {
    if (surrender != null) {
      return surrender(this);
    }
    return orElse();
  }
}

abstract class _Surrender implements BattlefieldEvent {
  const factory _Surrender(final String userThatSurrenderID) = _$_Surrender;

  String get userThatSurrenderID;
  @JsonKey(ignore: true)
  _$$_SurrenderCopyWith<_$_Surrender> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PassTurnCopyWith<$Res> {
  factory _$$_PassTurnCopyWith(
          _$_PassTurn value, $Res Function(_$_PassTurn) then) =
      __$$_PassTurnCopyWithImpl<$Res>;
  @useResult
  $Res call({String userTurnID});
}

/// @nodoc
class __$$_PassTurnCopyWithImpl<$Res>
    extends _$BattlefieldEventCopyWithImpl<$Res, _$_PassTurn>
    implements _$$_PassTurnCopyWith<$Res> {
  __$$_PassTurnCopyWithImpl(
      _$_PassTurn _value, $Res Function(_$_PassTurn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userTurnID = null,
  }) {
    return _then(_$_PassTurn(
      null == userTurnID
          ? _value.userTurnID
          : userTurnID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PassTurn implements _PassTurn {
  const _$_PassTurn(this.userTurnID);

  @override
  final String userTurnID;

  @override
  String toString() {
    return 'BattlefieldEvent.passTurn(userTurnID: $userTurnID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PassTurn &&
            (identical(other.userTurnID, userTurnID) ||
                other.userTurnID == userTurnID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userTurnID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PassTurnCopyWith<_$_PassTurn> get copyWith =>
      __$$_PassTurnCopyWithImpl<_$_PassTurn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerThatMakedMove, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)
        updateBoardStateAfterMove,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(BoardPieceEntity piece) pieceSelectedInCoordenate,
    required TResult Function() unSelectPiece,
  }) {
    return passTurn(userTurnID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult? Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult? Function()? unSelectPiece,
  }) {
    return passTurn?.call(userTurnID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult Function()? unSelectPiece,
    required TResult orElse(),
  }) {
    if (passTurn != null) {
      return passTurn(userTurnID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_UpdateBoardStateAfterMove value)
        updateBoardStateAfterMove,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
    required TResult Function(_UnSelectPiece value) unSelectPiece,
  }) {
    return passTurn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult? Function(_UnSelectPiece value)? unSelectPiece,
  }) {
    return passTurn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult Function(_UnSelectPiece value)? unSelectPiece,
    required TResult orElse(),
  }) {
    if (passTurn != null) {
      return passTurn(this);
    }
    return orElse();
  }
}

abstract class _PassTurn implements BattlefieldEvent {
  const factory _PassTurn(final String userTurnID) = _$_PassTurn;

  String get userTurnID;
  @JsonKey(ignore: true)
  _$$_PassTurnCopyWith<_$_PassTurn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotificateFailureCopyWith<$Res> {
  factory _$$_NotificateFailureCopyWith(_$_NotificateFailure value,
          $Res Function(_$_NotificateFailure) then) =
      __$$_NotificateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({MatchFailure failure});
}

/// @nodoc
class __$$_NotificateFailureCopyWithImpl<$Res>
    extends _$BattlefieldEventCopyWithImpl<$Res, _$_NotificateFailure>
    implements _$$_NotificateFailureCopyWith<$Res> {
  __$$_NotificateFailureCopyWithImpl(
      _$_NotificateFailure _value, $Res Function(_$_NotificateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_NotificateFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MatchFailure,
    ));
  }
}

/// @nodoc

class _$_NotificateFailure implements _NotificateFailure {
  const _$_NotificateFailure(this.failure);

  @override
  final MatchFailure failure;

  @override
  String toString() {
    return 'BattlefieldEvent.notificateFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificateFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificateFailureCopyWith<_$_NotificateFailure> get copyWith =>
      __$$_NotificateFailureCopyWithImpl<_$_NotificateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerThatMakedMove, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)
        updateBoardStateAfterMove,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(BoardPieceEntity piece) pieceSelectedInCoordenate,
    required TResult Function() unSelectPiece,
  }) {
    return notificateFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult? Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult? Function()? unSelectPiece,
  }) {
    return notificateFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult Function()? unSelectPiece,
    required TResult orElse(),
  }) {
    if (notificateFailure != null) {
      return notificateFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_UpdateBoardStateAfterMove value)
        updateBoardStateAfterMove,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
    required TResult Function(_UnSelectPiece value) unSelectPiece,
  }) {
    return notificateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult? Function(_UnSelectPiece value)? unSelectPiece,
  }) {
    return notificateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult Function(_UnSelectPiece value)? unSelectPiece,
    required TResult orElse(),
  }) {
    if (notificateFailure != null) {
      return notificateFailure(this);
    }
    return orElse();
  }
}

abstract class _NotificateFailure implements BattlefieldEvent {
  const factory _NotificateFailure(final MatchFailure failure) =
      _$_NotificateFailure;

  MatchFailure get failure;
  @JsonKey(ignore: true)
  _$$_NotificateFailureCopyWith<_$_NotificateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BattlefieldPieceSelectedCopyWith<$Res> {
  factory _$$_BattlefieldPieceSelectedCopyWith(
          _$_BattlefieldPieceSelected value,
          $Res Function(_$_BattlefieldPieceSelected) then) =
      __$$_BattlefieldPieceSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({BoardPieceEntity piece});
}

/// @nodoc
class __$$_BattlefieldPieceSelectedCopyWithImpl<$Res>
    extends _$BattlefieldEventCopyWithImpl<$Res, _$_BattlefieldPieceSelected>
    implements _$$_BattlefieldPieceSelectedCopyWith<$Res> {
  __$$_BattlefieldPieceSelectedCopyWithImpl(_$_BattlefieldPieceSelected _value,
      $Res Function(_$_BattlefieldPieceSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? piece = null,
  }) {
    return _then(_$_BattlefieldPieceSelected(
      null == piece
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as BoardPieceEntity,
    ));
  }
}

/// @nodoc

class _$_BattlefieldPieceSelected implements _BattlefieldPieceSelected {
  const _$_BattlefieldPieceSelected(this.piece);

  @override
  final BoardPieceEntity piece;

  @override
  String toString() {
    return 'BattlefieldEvent.pieceSelectedInCoordenate(piece: $piece)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BattlefieldPieceSelected &&
            const DeepCollectionEquality().equals(other.piece, piece));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(piece));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BattlefieldPieceSelectedCopyWith<_$_BattlefieldPieceSelected>
      get copyWith => __$$_BattlefieldPieceSelectedCopyWithImpl<
          _$_BattlefieldPieceSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerThatMakedMove, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)
        updateBoardStateAfterMove,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(BoardPieceEntity piece) pieceSelectedInCoordenate,
    required TResult Function() unSelectPiece,
  }) {
    return pieceSelectedInCoordenate(piece);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult? Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult? Function()? unSelectPiece,
  }) {
    return pieceSelectedInCoordenate?.call(piece);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult Function()? unSelectPiece,
    required TResult orElse(),
  }) {
    if (pieceSelectedInCoordenate != null) {
      return pieceSelectedInCoordenate(piece);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_UpdateBoardStateAfterMove value)
        updateBoardStateAfterMove,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
    required TResult Function(_UnSelectPiece value) unSelectPiece,
  }) {
    return pieceSelectedInCoordenate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult? Function(_UnSelectPiece value)? unSelectPiece,
  }) {
    return pieceSelectedInCoordenate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult Function(_UnSelectPiece value)? unSelectPiece,
    required TResult orElse(),
  }) {
    if (pieceSelectedInCoordenate != null) {
      return pieceSelectedInCoordenate(this);
    }
    return orElse();
  }
}

abstract class _BattlefieldPieceSelected implements BattlefieldEvent {
  const factory _BattlefieldPieceSelected(final BoardPieceEntity piece) =
      _$_BattlefieldPieceSelected;

  BoardPieceEntity get piece;
  @JsonKey(ignore: true)
  _$$_BattlefieldPieceSelectedCopyWith<_$_BattlefieldPieceSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnSelectPieceCopyWith<$Res> {
  factory _$$_UnSelectPieceCopyWith(
          _$_UnSelectPiece value, $Res Function(_$_UnSelectPiece) then) =
      __$$_UnSelectPieceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnSelectPieceCopyWithImpl<$Res>
    extends _$BattlefieldEventCopyWithImpl<$Res, _$_UnSelectPiece>
    implements _$$_UnSelectPieceCopyWith<$Res> {
  __$$_UnSelectPieceCopyWithImpl(
      _$_UnSelectPiece _value, $Res Function(_$_UnSelectPiece) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnSelectPiece implements _UnSelectPiece {
  const _$_UnSelectPiece();

  @override
  String toString() {
    return 'BattlefieldEvent.unSelectPiece()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnSelectPiece);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String playerThatMakedMove, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)
        updateBoardStateAfterMove,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(BoardPieceEntity piece) pieceSelectedInCoordenate,
    required TResult Function() unSelectPiece,
  }) {
    return unSelectPiece();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult? Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult? Function()? unSelectPiece,
  }) {
    return unSelectPiece?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove)?
        updateBoardStateAfterMove,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(BoardPieceEntity piece)? pieceSelectedInCoordenate,
    TResult Function()? unSelectPiece,
    required TResult orElse(),
  }) {
    if (unSelectPiece != null) {
      return unSelectPiece();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_UpdateBoardStateAfterMove value)
        updateBoardStateAfterMove,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
    required TResult Function(_UnSelectPiece value) unSelectPiece,
  }) {
    return unSelectPiece(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult? Function(_UnSelectPiece value)? unSelectPiece,
  }) {
    return unSelectPiece?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_UpdateBoardStateAfterMove value)?
        updateBoardStateAfterMove,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    TResult Function(_UnSelectPiece value)? unSelectPiece,
    required TResult orElse(),
  }) {
    if (unSelectPiece != null) {
      return unSelectPiece(this);
    }
    return orElse();
  }
}

abstract class _UnSelectPiece implements BattlefieldEvent {
  const factory _UnSelectPiece() = _$_UnSelectPiece;
}

/// @nodoc
mixin _$BattlefieldState {
  List<UserStateEntity> get users => throw _privateConstructorUsedError;
  String get currentPlayerId => throw _privateConstructorUsedError;
  List<BoardFieldEntity> get entities => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserStateEntity> users,
            String currentPlayerId, List<BoardFieldEntity> entities)
        defaultState,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)
        defaultStateWithAnimations,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)
        pieceSelected,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            MatchFailure failure,
            List<BoardFieldEntity> entities)
        withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserStateEntity> users, String currentPlayerId,
            List<BoardFieldEntity> entities)?
        defaultState,
    TResult? Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)?
        defaultStateWithAnimations,
    TResult? Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)?
        pieceSelected,
    TResult? Function(List<UserStateEntity> users, String currentPlayerId,
            MatchFailure failure, List<BoardFieldEntity> entities)?
        withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserStateEntity> users, String currentPlayerId,
            List<BoardFieldEntity> entities)?
        defaultState,
    TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)?
        defaultStateWithAnimations,
    TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)?
        pieceSelected,
    TResult Function(List<UserStateEntity> users, String currentPlayerId,
            MatchFailure failure, List<BoardFieldEntity> entities)?
        withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultState value) defaultState,
    required TResult Function(_DefaultStateWithAnimations value)
        defaultStateWithAnimations,
    required TResult Function(_PieceSelected value) pieceSelected,
    required TResult Function(_WithError value) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultState value)? defaultState,
    TResult? Function(_DefaultStateWithAnimations value)?
        defaultStateWithAnimations,
    TResult? Function(_PieceSelected value)? pieceSelected,
    TResult? Function(_WithError value)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultState value)? defaultState,
    TResult Function(_DefaultStateWithAnimations value)?
        defaultStateWithAnimations,
    TResult Function(_PieceSelected value)? pieceSelected,
    TResult Function(_WithError value)? withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BattlefieldStateCopyWith<BattlefieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattlefieldStateCopyWith<$Res> {
  factory $BattlefieldStateCopyWith(
          BattlefieldState value, $Res Function(BattlefieldState) then) =
      _$BattlefieldStateCopyWithImpl<$Res, BattlefieldState>;
  @useResult
  $Res call(
      {List<UserStateEntity> users,
      String currentPlayerId,
      List<BoardFieldEntity> entities});
}

/// @nodoc
class _$BattlefieldStateCopyWithImpl<$Res, $Val extends BattlefieldState>
    implements $BattlefieldStateCopyWith<$Res> {
  _$BattlefieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? currentPlayerId = null,
    Object? entities = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserStateEntity>,
      currentPlayerId: null == currentPlayerId
          ? _value.currentPlayerId
          : currentPlayerId // ignore: cast_nullable_to_non_nullable
              as String,
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<BoardFieldEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DefaultStateCopyWith<$Res>
    implements $BattlefieldStateCopyWith<$Res> {
  factory _$$_DefaultStateCopyWith(
          _$_DefaultState value, $Res Function(_$_DefaultState) then) =
      __$$_DefaultStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserStateEntity> users,
      String currentPlayerId,
      List<BoardFieldEntity> entities});
}

/// @nodoc
class __$$_DefaultStateCopyWithImpl<$Res>
    extends _$BattlefieldStateCopyWithImpl<$Res, _$_DefaultState>
    implements _$$_DefaultStateCopyWith<$Res> {
  __$$_DefaultStateCopyWithImpl(
      _$_DefaultState _value, $Res Function(_$_DefaultState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? currentPlayerId = null,
    Object? entities = null,
  }) {
    return _then(_$_DefaultState(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserStateEntity>,
      currentPlayerId: null == currentPlayerId
          ? _value.currentPlayerId
          : currentPlayerId // ignore: cast_nullable_to_non_nullable
              as String,
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<BoardFieldEntity>,
    ));
  }
}

/// @nodoc

class _$_DefaultState implements _DefaultState {
  const _$_DefaultState(
      {required final List<UserStateEntity> users,
      required this.currentPlayerId,
      required final List<BoardFieldEntity> entities})
      : _users = users,
        _entities = entities;

  final List<UserStateEntity> _users;
  @override
  List<UserStateEntity> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final String currentPlayerId;
  final List<BoardFieldEntity> _entities;
  @override
  List<BoardFieldEntity> get entities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  String toString() {
    return 'BattlefieldState.defaultState(users: $users, currentPlayerId: $currentPlayerId, entities: $entities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefaultState &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.currentPlayerId, currentPlayerId) ||
                other.currentPlayerId == currentPlayerId) &&
            const DeepCollectionEquality().equals(other._entities, _entities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      currentPlayerId,
      const DeepCollectionEquality().hash(_entities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DefaultStateCopyWith<_$_DefaultState> get copyWith =>
      __$$_DefaultStateCopyWithImpl<_$_DefaultState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserStateEntity> users,
            String currentPlayerId, List<BoardFieldEntity> entities)
        defaultState,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)
        defaultStateWithAnimations,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)
        pieceSelected,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            MatchFailure failure,
            List<BoardFieldEntity> entities)
        withError,
  }) {
    return defaultState(users, currentPlayerId, entities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserStateEntity> users, String currentPlayerId,
            List<BoardFieldEntity> entities)?
        defaultState,
    TResult? Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)?
        defaultStateWithAnimations,
    TResult? Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)?
        pieceSelected,
    TResult? Function(List<UserStateEntity> users, String currentPlayerId,
            MatchFailure failure, List<BoardFieldEntity> entities)?
        withError,
  }) {
    return defaultState?.call(users, currentPlayerId, entities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserStateEntity> users, String currentPlayerId,
            List<BoardFieldEntity> entities)?
        defaultState,
    TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)?
        defaultStateWithAnimations,
    TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)?
        pieceSelected,
    TResult Function(List<UserStateEntity> users, String currentPlayerId,
            MatchFailure failure, List<BoardFieldEntity> entities)?
        withError,
    required TResult orElse(),
  }) {
    if (defaultState != null) {
      return defaultState(users, currentPlayerId, entities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultState value) defaultState,
    required TResult Function(_DefaultStateWithAnimations value)
        defaultStateWithAnimations,
    required TResult Function(_PieceSelected value) pieceSelected,
    required TResult Function(_WithError value) withError,
  }) {
    return defaultState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultState value)? defaultState,
    TResult? Function(_DefaultStateWithAnimations value)?
        defaultStateWithAnimations,
    TResult? Function(_PieceSelected value)? pieceSelected,
    TResult? Function(_WithError value)? withError,
  }) {
    return defaultState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultState value)? defaultState,
    TResult Function(_DefaultStateWithAnimations value)?
        defaultStateWithAnimations,
    TResult Function(_PieceSelected value)? pieceSelected,
    TResult Function(_WithError value)? withError,
    required TResult orElse(),
  }) {
    if (defaultState != null) {
      return defaultState(this);
    }
    return orElse();
  }
}

abstract class _DefaultState implements BattlefieldState {
  const factory _DefaultState(
      {required final List<UserStateEntity> users,
      required final String currentPlayerId,
      required final List<BoardFieldEntity> entities}) = _$_DefaultState;

  @override
  List<UserStateEntity> get users;
  @override
  String get currentPlayerId;
  @override
  List<BoardFieldEntity> get entities;
  @override
  @JsonKey(ignore: true)
  _$$_DefaultStateCopyWith<_$_DefaultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DefaultStateWithAnimationsCopyWith<$Res>
    implements $BattlefieldStateCopyWith<$Res> {
  factory _$$_DefaultStateWithAnimationsCopyWith(
          _$_DefaultStateWithAnimations value,
          $Res Function(_$_DefaultStateWithAnimations) then) =
      __$$_DefaultStateWithAnimationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserStateEntity> users,
      String currentPlayerId,
      List<BoardFieldEntity> entities,
      List<MoveAnimationEntity> animationsInMove});
}

/// @nodoc
class __$$_DefaultStateWithAnimationsCopyWithImpl<$Res>
    extends _$BattlefieldStateCopyWithImpl<$Res, _$_DefaultStateWithAnimations>
    implements _$$_DefaultStateWithAnimationsCopyWith<$Res> {
  __$$_DefaultStateWithAnimationsCopyWithImpl(
      _$_DefaultStateWithAnimations _value,
      $Res Function(_$_DefaultStateWithAnimations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? currentPlayerId = null,
    Object? entities = null,
    Object? animationsInMove = null,
  }) {
    return _then(_$_DefaultStateWithAnimations(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserStateEntity>,
      currentPlayerId: null == currentPlayerId
          ? _value.currentPlayerId
          : currentPlayerId // ignore: cast_nullable_to_non_nullable
              as String,
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<BoardFieldEntity>,
      animationsInMove: null == animationsInMove
          ? _value._animationsInMove
          : animationsInMove // ignore: cast_nullable_to_non_nullable
              as List<MoveAnimationEntity>,
    ));
  }
}

/// @nodoc

class _$_DefaultStateWithAnimations implements _DefaultStateWithAnimations {
  const _$_DefaultStateWithAnimations(
      {required final List<UserStateEntity> users,
      required this.currentPlayerId,
      required final List<BoardFieldEntity> entities,
      required final List<MoveAnimationEntity> animationsInMove})
      : _users = users,
        _entities = entities,
        _animationsInMove = animationsInMove;

  final List<UserStateEntity> _users;
  @override
  List<UserStateEntity> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final String currentPlayerId;
  final List<BoardFieldEntity> _entities;
  @override
  List<BoardFieldEntity> get entities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  final List<MoveAnimationEntity> _animationsInMove;
  @override
  List<MoveAnimationEntity> get animationsInMove {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animationsInMove);
  }

  @override
  String toString() {
    return 'BattlefieldState.defaultStateWithAnimations(users: $users, currentPlayerId: $currentPlayerId, entities: $entities, animationsInMove: $animationsInMove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefaultStateWithAnimations &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.currentPlayerId, currentPlayerId) ||
                other.currentPlayerId == currentPlayerId) &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            const DeepCollectionEquality()
                .equals(other._animationsInMove, _animationsInMove));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      currentPlayerId,
      const DeepCollectionEquality().hash(_entities),
      const DeepCollectionEquality().hash(_animationsInMove));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DefaultStateWithAnimationsCopyWith<_$_DefaultStateWithAnimations>
      get copyWith => __$$_DefaultStateWithAnimationsCopyWithImpl<
          _$_DefaultStateWithAnimations>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserStateEntity> users,
            String currentPlayerId, List<BoardFieldEntity> entities)
        defaultState,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)
        defaultStateWithAnimations,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)
        pieceSelected,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            MatchFailure failure,
            List<BoardFieldEntity> entities)
        withError,
  }) {
    return defaultStateWithAnimations(
        users, currentPlayerId, entities, animationsInMove);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserStateEntity> users, String currentPlayerId,
            List<BoardFieldEntity> entities)?
        defaultState,
    TResult? Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)?
        defaultStateWithAnimations,
    TResult? Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)?
        pieceSelected,
    TResult? Function(List<UserStateEntity> users, String currentPlayerId,
            MatchFailure failure, List<BoardFieldEntity> entities)?
        withError,
  }) {
    return defaultStateWithAnimations?.call(
        users, currentPlayerId, entities, animationsInMove);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserStateEntity> users, String currentPlayerId,
            List<BoardFieldEntity> entities)?
        defaultState,
    TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)?
        defaultStateWithAnimations,
    TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)?
        pieceSelected,
    TResult Function(List<UserStateEntity> users, String currentPlayerId,
            MatchFailure failure, List<BoardFieldEntity> entities)?
        withError,
    required TResult orElse(),
  }) {
    if (defaultStateWithAnimations != null) {
      return defaultStateWithAnimations(
          users, currentPlayerId, entities, animationsInMove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultState value) defaultState,
    required TResult Function(_DefaultStateWithAnimations value)
        defaultStateWithAnimations,
    required TResult Function(_PieceSelected value) pieceSelected,
    required TResult Function(_WithError value) withError,
  }) {
    return defaultStateWithAnimations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultState value)? defaultState,
    TResult? Function(_DefaultStateWithAnimations value)?
        defaultStateWithAnimations,
    TResult? Function(_PieceSelected value)? pieceSelected,
    TResult? Function(_WithError value)? withError,
  }) {
    return defaultStateWithAnimations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultState value)? defaultState,
    TResult Function(_DefaultStateWithAnimations value)?
        defaultStateWithAnimations,
    TResult Function(_PieceSelected value)? pieceSelected,
    TResult Function(_WithError value)? withError,
    required TResult orElse(),
  }) {
    if (defaultStateWithAnimations != null) {
      return defaultStateWithAnimations(this);
    }
    return orElse();
  }
}

abstract class _DefaultStateWithAnimations implements BattlefieldState {
  const factory _DefaultStateWithAnimations(
          {required final List<UserStateEntity> users,
          required final String currentPlayerId,
          required final List<BoardFieldEntity> entities,
          required final List<MoveAnimationEntity> animationsInMove}) =
      _$_DefaultStateWithAnimations;

  @override
  List<UserStateEntity> get users;
  @override
  String get currentPlayerId;
  @override
  List<BoardFieldEntity> get entities;
  List<MoveAnimationEntity> get animationsInMove;
  @override
  @JsonKey(ignore: true)
  _$$_DefaultStateWithAnimationsCopyWith<_$_DefaultStateWithAnimations>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PieceSelectedCopyWith<$Res>
    implements $BattlefieldStateCopyWith<$Res> {
  factory _$$_PieceSelectedCopyWith(
          _$_PieceSelected value, $Res Function(_$_PieceSelected) then) =
      __$$_PieceSelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserStateEntity> users,
      String currentPlayerId,
      List<Coordenate> possiblePieceMovementArea,
      List<Coordenate> possiblePieceAttackArea,
      List<BoardFieldEntity> entities,
      BoardPieceEntity selectedPiece});
}

/// @nodoc
class __$$_PieceSelectedCopyWithImpl<$Res>
    extends _$BattlefieldStateCopyWithImpl<$Res, _$_PieceSelected>
    implements _$$_PieceSelectedCopyWith<$Res> {
  __$$_PieceSelectedCopyWithImpl(
      _$_PieceSelected _value, $Res Function(_$_PieceSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? currentPlayerId = null,
    Object? possiblePieceMovementArea = null,
    Object? possiblePieceAttackArea = null,
    Object? entities = null,
    Object? selectedPiece = null,
  }) {
    return _then(_$_PieceSelected(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserStateEntity>,
      currentPlayerId: null == currentPlayerId
          ? _value.currentPlayerId
          : currentPlayerId // ignore: cast_nullable_to_non_nullable
              as String,
      possiblePieceMovementArea: null == possiblePieceMovementArea
          ? _value._possiblePieceMovementArea
          : possiblePieceMovementArea // ignore: cast_nullable_to_non_nullable
              as List<Coordenate>,
      possiblePieceAttackArea: null == possiblePieceAttackArea
          ? _value._possiblePieceAttackArea
          : possiblePieceAttackArea // ignore: cast_nullable_to_non_nullable
              as List<Coordenate>,
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<BoardFieldEntity>,
      selectedPiece: null == selectedPiece
          ? _value.selectedPiece
          : selectedPiece // ignore: cast_nullable_to_non_nullable
              as BoardPieceEntity,
    ));
  }
}

/// @nodoc

class _$_PieceSelected implements _PieceSelected {
  const _$_PieceSelected(
      {required final List<UserStateEntity> users,
      required this.currentPlayerId,
      required final List<Coordenate> possiblePieceMovementArea,
      required final List<Coordenate> possiblePieceAttackArea,
      required final List<BoardFieldEntity> entities,
      required this.selectedPiece})
      : _users = users,
        _possiblePieceMovementArea = possiblePieceMovementArea,
        _possiblePieceAttackArea = possiblePieceAttackArea,
        _entities = entities;

  final List<UserStateEntity> _users;
  @override
  List<UserStateEntity> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final String currentPlayerId;
  final List<Coordenate> _possiblePieceMovementArea;
  @override
  List<Coordenate> get possiblePieceMovementArea {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_possiblePieceMovementArea);
  }

  final List<Coordenate> _possiblePieceAttackArea;
  @override
  List<Coordenate> get possiblePieceAttackArea {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_possiblePieceAttackArea);
  }

  final List<BoardFieldEntity> _entities;
  @override
  List<BoardFieldEntity> get entities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  final BoardPieceEntity selectedPiece;

  @override
  String toString() {
    return 'BattlefieldState.pieceSelected(users: $users, currentPlayerId: $currentPlayerId, possiblePieceMovementArea: $possiblePieceMovementArea, possiblePieceAttackArea: $possiblePieceAttackArea, entities: $entities, selectedPiece: $selectedPiece)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PieceSelected &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.currentPlayerId, currentPlayerId) ||
                other.currentPlayerId == currentPlayerId) &&
            const DeepCollectionEquality().equals(
                other._possiblePieceMovementArea, _possiblePieceMovementArea) &&
            const DeepCollectionEquality().equals(
                other._possiblePieceAttackArea, _possiblePieceAttackArea) &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            const DeepCollectionEquality()
                .equals(other.selectedPiece, selectedPiece));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      currentPlayerId,
      const DeepCollectionEquality().hash(_possiblePieceMovementArea),
      const DeepCollectionEquality().hash(_possiblePieceAttackArea),
      const DeepCollectionEquality().hash(_entities),
      const DeepCollectionEquality().hash(selectedPiece));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PieceSelectedCopyWith<_$_PieceSelected> get copyWith =>
      __$$_PieceSelectedCopyWithImpl<_$_PieceSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserStateEntity> users,
            String currentPlayerId, List<BoardFieldEntity> entities)
        defaultState,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)
        defaultStateWithAnimations,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)
        pieceSelected,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            MatchFailure failure,
            List<BoardFieldEntity> entities)
        withError,
  }) {
    return pieceSelected(users, currentPlayerId, possiblePieceMovementArea,
        possiblePieceAttackArea, entities, selectedPiece);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserStateEntity> users, String currentPlayerId,
            List<BoardFieldEntity> entities)?
        defaultState,
    TResult? Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)?
        defaultStateWithAnimations,
    TResult? Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)?
        pieceSelected,
    TResult? Function(List<UserStateEntity> users, String currentPlayerId,
            MatchFailure failure, List<BoardFieldEntity> entities)?
        withError,
  }) {
    return pieceSelected?.call(
        users,
        currentPlayerId,
        possiblePieceMovementArea,
        possiblePieceAttackArea,
        entities,
        selectedPiece);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserStateEntity> users, String currentPlayerId,
            List<BoardFieldEntity> entities)?
        defaultState,
    TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)?
        defaultStateWithAnimations,
    TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)?
        pieceSelected,
    TResult Function(List<UserStateEntity> users, String currentPlayerId,
            MatchFailure failure, List<BoardFieldEntity> entities)?
        withError,
    required TResult orElse(),
  }) {
    if (pieceSelected != null) {
      return pieceSelected(users, currentPlayerId, possiblePieceMovementArea,
          possiblePieceAttackArea, entities, selectedPiece);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultState value) defaultState,
    required TResult Function(_DefaultStateWithAnimations value)
        defaultStateWithAnimations,
    required TResult Function(_PieceSelected value) pieceSelected,
    required TResult Function(_WithError value) withError,
  }) {
    return pieceSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultState value)? defaultState,
    TResult? Function(_DefaultStateWithAnimations value)?
        defaultStateWithAnimations,
    TResult? Function(_PieceSelected value)? pieceSelected,
    TResult? Function(_WithError value)? withError,
  }) {
    return pieceSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultState value)? defaultState,
    TResult Function(_DefaultStateWithAnimations value)?
        defaultStateWithAnimations,
    TResult Function(_PieceSelected value)? pieceSelected,
    TResult Function(_WithError value)? withError,
    required TResult orElse(),
  }) {
    if (pieceSelected != null) {
      return pieceSelected(this);
    }
    return orElse();
  }
}

abstract class _PieceSelected implements BattlefieldState {
  const factory _PieceSelected(
      {required final List<UserStateEntity> users,
      required final String currentPlayerId,
      required final List<Coordenate> possiblePieceMovementArea,
      required final List<Coordenate> possiblePieceAttackArea,
      required final List<BoardFieldEntity> entities,
      required final BoardPieceEntity selectedPiece}) = _$_PieceSelected;

  @override
  List<UserStateEntity> get users;
  @override
  String get currentPlayerId;
  List<Coordenate> get possiblePieceMovementArea;
  List<Coordenate> get possiblePieceAttackArea;
  @override
  List<BoardFieldEntity> get entities;
  BoardPieceEntity get selectedPiece;
  @override
  @JsonKey(ignore: true)
  _$$_PieceSelectedCopyWith<_$_PieceSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WithErrorCopyWith<$Res>
    implements $BattlefieldStateCopyWith<$Res> {
  factory _$$_WithErrorCopyWith(
          _$_WithError value, $Res Function(_$_WithError) then) =
      __$$_WithErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserStateEntity> users,
      String currentPlayerId,
      MatchFailure failure,
      List<BoardFieldEntity> entities});
}

/// @nodoc
class __$$_WithErrorCopyWithImpl<$Res>
    extends _$BattlefieldStateCopyWithImpl<$Res, _$_WithError>
    implements _$$_WithErrorCopyWith<$Res> {
  __$$_WithErrorCopyWithImpl(
      _$_WithError _value, $Res Function(_$_WithError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? currentPlayerId = null,
    Object? failure = null,
    Object? entities = null,
  }) {
    return _then(_$_WithError(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserStateEntity>,
      currentPlayerId: null == currentPlayerId
          ? _value.currentPlayerId
          : currentPlayerId // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MatchFailure,
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<BoardFieldEntity>,
    ));
  }
}

/// @nodoc

class _$_WithError implements _WithError {
  const _$_WithError(
      {required final List<UserStateEntity> users,
      required this.currentPlayerId,
      required this.failure,
      required final List<BoardFieldEntity> entities})
      : _users = users,
        _entities = entities;

  final List<UserStateEntity> _users;
  @override
  List<UserStateEntity> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final String currentPlayerId;
  @override
  final MatchFailure failure;
  final List<BoardFieldEntity> _entities;
  @override
  List<BoardFieldEntity> get entities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  String toString() {
    return 'BattlefieldState.withError(users: $users, currentPlayerId: $currentPlayerId, failure: $failure, entities: $entities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithError &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.currentPlayerId, currentPlayerId) ||
                other.currentPlayerId == currentPlayerId) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other._entities, _entities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      currentPlayerId,
      failure,
      const DeepCollectionEquality().hash(_entities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithErrorCopyWith<_$_WithError> get copyWith =>
      __$$_WithErrorCopyWithImpl<_$_WithError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UserStateEntity> users,
            String currentPlayerId, List<BoardFieldEntity> entities)
        defaultState,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)
        defaultStateWithAnimations,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)
        pieceSelected,
    required TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            MatchFailure failure,
            List<BoardFieldEntity> entities)
        withError,
  }) {
    return withError(users, currentPlayerId, failure, entities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UserStateEntity> users, String currentPlayerId,
            List<BoardFieldEntity> entities)?
        defaultState,
    TResult? Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)?
        defaultStateWithAnimations,
    TResult? Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)?
        pieceSelected,
    TResult? Function(List<UserStateEntity> users, String currentPlayerId,
            MatchFailure failure, List<BoardFieldEntity> entities)?
        withError,
  }) {
    return withError?.call(users, currentPlayerId, failure, entities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UserStateEntity> users, String currentPlayerId,
            List<BoardFieldEntity> entities)?
        defaultState,
    TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<BoardFieldEntity> entities,
            List<MoveAnimationEntity> animationsInMove)?
        defaultStateWithAnimations,
    TResult Function(
            List<UserStateEntity> users,
            String currentPlayerId,
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<BoardFieldEntity> entities,
            BoardPieceEntity selectedPiece)?
        pieceSelected,
    TResult Function(List<UserStateEntity> users, String currentPlayerId,
            MatchFailure failure, List<BoardFieldEntity> entities)?
        withError,
    required TResult orElse(),
  }) {
    if (withError != null) {
      return withError(users, currentPlayerId, failure, entities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DefaultState value) defaultState,
    required TResult Function(_DefaultStateWithAnimations value)
        defaultStateWithAnimations,
    required TResult Function(_PieceSelected value) pieceSelected,
    required TResult Function(_WithError value) withError,
  }) {
    return withError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DefaultState value)? defaultState,
    TResult? Function(_DefaultStateWithAnimations value)?
        defaultStateWithAnimations,
    TResult? Function(_PieceSelected value)? pieceSelected,
    TResult? Function(_WithError value)? withError,
  }) {
    return withError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DefaultState value)? defaultState,
    TResult Function(_DefaultStateWithAnimations value)?
        defaultStateWithAnimations,
    TResult Function(_PieceSelected value)? pieceSelected,
    TResult Function(_WithError value)? withError,
    required TResult orElse(),
  }) {
    if (withError != null) {
      return withError(this);
    }
    return orElse();
  }
}

abstract class _WithError implements BattlefieldState {
  const factory _WithError(
      {required final List<UserStateEntity> users,
      required final String currentPlayerId,
      required final MatchFailure failure,
      required final List<BoardFieldEntity> entities}) = _$_WithError;

  @override
  List<UserStateEntity> get users;
  @override
  String get currentPlayerId;
  MatchFailure get failure;
  @override
  List<BoardFieldEntity> get entities;
  @override
  @JsonKey(ignore: true)
  _$$_WithErrorCopyWith<_$_WithError> get copyWith =>
      throw _privateConstructorUsedError;
}
