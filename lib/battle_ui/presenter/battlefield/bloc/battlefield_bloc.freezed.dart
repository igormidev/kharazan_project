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
    required TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)
        manegeMoveFromApi,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithoutAnimation,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(PieceEntity piece, Coordenate coordenate)
        pieceSelectedInCoordenate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult? Function(String userId, String moveMaded)?
        makeMoveWithoutAnimation,
    TResult? Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult Function(String userId, String moveMaded)? makeMoveWithoutAnimation,
    TResult Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManegeMoveFromApi value) manegeMoveFromApi,
    required TResult Function(_MakeMoveWithoutAnimation value)
        makeMoveWithoutAnimation,
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult? Function(_MakeMoveWithoutAnimation value)?
        makeMoveWithoutAnimation,
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult Function(_MakeMoveWithoutAnimation value)? makeMoveWithoutAnimation,
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
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
abstract class _$$_ManegeMoveFromApiCopyWith<$Res> {
  factory _$$_ManegeMoveFromApiCopyWith(_$_ManegeMoveFromApi value,
          $Res Function(_$_ManegeMoveFromApi) then) =
      __$$_ManegeMoveFromApiCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      CoordenatesInMove coordenatesInMove,
      String playerUserTurnId,
      List<OldBoardEntity> boardState,
      List<UserStateEntity> usersInTheMatchState});
}

/// @nodoc
class __$$_ManegeMoveFromApiCopyWithImpl<$Res>
    extends _$BattlefieldEventCopyWithImpl<$Res, _$_ManegeMoveFromApi>
    implements _$$_ManegeMoveFromApiCopyWith<$Res> {
  __$$_ManegeMoveFromApiCopyWithImpl(
      _$_ManegeMoveFromApi _value, $Res Function(_$_ManegeMoveFromApi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? coordenatesInMove = null,
    Object? playerUserTurnId = null,
    Object? boardState = null,
    Object? usersInTheMatchState = null,
  }) {
    return _then(_$_ManegeMoveFromApi(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<OldBoardEntity>,
      usersInTheMatchState: null == usersInTheMatchState
          ? _value._usersInTheMatchState
          : usersInTheMatchState // ignore: cast_nullable_to_non_nullable
              as List<UserStateEntity>,
    ));
  }
}

/// @nodoc

class _$_ManegeMoveFromApi
    with DiagnosticableTreeMixin
    implements _ManegeMoveFromApi {
  const _$_ManegeMoveFromApi(
      {required this.userId,
      required this.coordenatesInMove,
      required this.playerUserTurnId,
      required final List<OldBoardEntity> boardState,
      required final List<UserStateEntity> usersInTheMatchState})
      : _boardState = boardState,
        _usersInTheMatchState = usersInTheMatchState;

  @override
  final String userId;
  @override
  final CoordenatesInMove coordenatesInMove;
  @override
  final String playerUserTurnId;
  final List<OldBoardEntity> _boardState;
  @override
  List<OldBoardEntity> get boardState {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boardState);
  }

  final List<UserStateEntity> _usersInTheMatchState;
  @override
  List<UserStateEntity> get usersInTheMatchState {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersInTheMatchState);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BattlefieldEvent.manegeMoveFromApi(userId: $userId, coordenatesInMove: $coordenatesInMove, playerUserTurnId: $playerUserTurnId, boardState: $boardState, usersInTheMatchState: $usersInTheMatchState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BattlefieldEvent.manegeMoveFromApi'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('coordenatesInMove', coordenatesInMove))
      ..add(DiagnosticsProperty('playerUserTurnId', playerUserTurnId))
      ..add(DiagnosticsProperty('boardState', boardState))
      ..add(DiagnosticsProperty('usersInTheMatchState', usersInTheMatchState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManegeMoveFromApi &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.coordenatesInMove, coordenatesInMove) ||
                other.coordenatesInMove == coordenatesInMove) &&
            (identical(other.playerUserTurnId, playerUserTurnId) ||
                other.playerUserTurnId == playerUserTurnId) &&
            const DeepCollectionEquality()
                .equals(other._boardState, _boardState) &&
            const DeepCollectionEquality()
                .equals(other._usersInTheMatchState, _usersInTheMatchState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      coordenatesInMove,
      playerUserTurnId,
      const DeepCollectionEquality().hash(_boardState),
      const DeepCollectionEquality().hash(_usersInTheMatchState));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManegeMoveFromApiCopyWith<_$_ManegeMoveFromApi> get copyWith =>
      __$$_ManegeMoveFromApiCopyWithImpl<_$_ManegeMoveFromApi>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)
        manegeMoveFromApi,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithoutAnimation,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(PieceEntity piece, Coordenate coordenate)
        pieceSelectedInCoordenate,
  }) {
    return manegeMoveFromApi(userId, coordenatesInMove, playerUserTurnId,
        boardState, usersInTheMatchState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult? Function(String userId, String moveMaded)?
        makeMoveWithoutAnimation,
    TResult? Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
  }) {
    return manegeMoveFromApi?.call(userId, coordenatesInMove, playerUserTurnId,
        boardState, usersInTheMatchState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult Function(String userId, String moveMaded)? makeMoveWithoutAnimation,
    TResult Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
    required TResult orElse(),
  }) {
    if (manegeMoveFromApi != null) {
      return manegeMoveFromApi(userId, coordenatesInMove, playerUserTurnId,
          boardState, usersInTheMatchState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManegeMoveFromApi value) manegeMoveFromApi,
    required TResult Function(_MakeMoveWithoutAnimation value)
        makeMoveWithoutAnimation,
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
  }) {
    return manegeMoveFromApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult? Function(_MakeMoveWithoutAnimation value)?
        makeMoveWithoutAnimation,
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
  }) {
    return manegeMoveFromApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult Function(_MakeMoveWithoutAnimation value)? makeMoveWithoutAnimation,
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    required TResult orElse(),
  }) {
    if (manegeMoveFromApi != null) {
      return manegeMoveFromApi(this);
    }
    return orElse();
  }
}

abstract class _ManegeMoveFromApi implements BattlefieldEvent {
  const factory _ManegeMoveFromApi(
          {required final String userId,
          required final CoordenatesInMove coordenatesInMove,
          required final String playerUserTurnId,
          required final List<OldBoardEntity> boardState,
          required final List<UserStateEntity> usersInTheMatchState}) =
      _$_ManegeMoveFromApi;

  String get userId;
  CoordenatesInMove get coordenatesInMove;
  String get playerUserTurnId;
  List<OldBoardEntity> get boardState;
  List<UserStateEntity> get usersInTheMatchState;
  @JsonKey(ignore: true)
  _$$_ManegeMoveFromApiCopyWith<_$_ManegeMoveFromApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MakeMoveWithoutAnimationCopyWith<$Res> {
  factory _$$_MakeMoveWithoutAnimationCopyWith(
          _$_MakeMoveWithoutAnimation value,
          $Res Function(_$_MakeMoveWithoutAnimation) then) =
      __$$_MakeMoveWithoutAnimationCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String moveMaded});
}

/// @nodoc
class __$$_MakeMoveWithoutAnimationCopyWithImpl<$Res>
    extends _$BattlefieldEventCopyWithImpl<$Res, _$_MakeMoveWithoutAnimation>
    implements _$$_MakeMoveWithoutAnimationCopyWith<$Res> {
  __$$_MakeMoveWithoutAnimationCopyWithImpl(_$_MakeMoveWithoutAnimation _value,
      $Res Function(_$_MakeMoveWithoutAnimation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? moveMaded = null,
  }) {
    return _then(_$_MakeMoveWithoutAnimation(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == moveMaded
          ? _value.moveMaded
          : moveMaded // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MakeMoveWithoutAnimation
    with DiagnosticableTreeMixin
    implements _MakeMoveWithoutAnimation {
  const _$_MakeMoveWithoutAnimation(this.userId, this.moveMaded);

  @override
  final String userId;
  @override
  final String moveMaded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BattlefieldEvent.makeMoveWithoutAnimation(userId: $userId, moveMaded: $moveMaded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'BattlefieldEvent.makeMoveWithoutAnimation'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('moveMaded', moveMaded));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MakeMoveWithoutAnimation &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.moveMaded, moveMaded) ||
                other.moveMaded == moveMaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, moveMaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MakeMoveWithoutAnimationCopyWith<_$_MakeMoveWithoutAnimation>
      get copyWith => __$$_MakeMoveWithoutAnimationCopyWithImpl<
          _$_MakeMoveWithoutAnimation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)
        manegeMoveFromApi,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithoutAnimation,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(PieceEntity piece, Coordenate coordenate)
        pieceSelectedInCoordenate,
  }) {
    return makeMoveWithoutAnimation(userId, moveMaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult? Function(String userId, String moveMaded)?
        makeMoveWithoutAnimation,
    TResult? Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
  }) {
    return makeMoveWithoutAnimation?.call(userId, moveMaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult Function(String userId, String moveMaded)? makeMoveWithoutAnimation,
    TResult Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
    required TResult orElse(),
  }) {
    if (makeMoveWithoutAnimation != null) {
      return makeMoveWithoutAnimation(userId, moveMaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManegeMoveFromApi value) manegeMoveFromApi,
    required TResult Function(_MakeMoveWithoutAnimation value)
        makeMoveWithoutAnimation,
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
  }) {
    return makeMoveWithoutAnimation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult? Function(_MakeMoveWithoutAnimation value)?
        makeMoveWithoutAnimation,
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
  }) {
    return makeMoveWithoutAnimation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult Function(_MakeMoveWithoutAnimation value)? makeMoveWithoutAnimation,
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    required TResult orElse(),
  }) {
    if (makeMoveWithoutAnimation != null) {
      return makeMoveWithoutAnimation(this);
    }
    return orElse();
  }
}

abstract class _MakeMoveWithoutAnimation implements BattlefieldEvent {
  const factory _MakeMoveWithoutAnimation(
          final String userId, final String moveMaded) =
      _$_MakeMoveWithoutAnimation;

  String get userId;
  String get moveMaded;
  @JsonKey(ignore: true)
  _$$_MakeMoveWithoutAnimationCopyWith<_$_MakeMoveWithoutAnimation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MakeMoveWithAnimationCopyWith<$Res> {
  factory _$$_MakeMoveWithAnimationCopyWith(_$_MakeMoveWithAnimation value,
          $Res Function(_$_MakeMoveWithAnimation) then) =
      __$$_MakeMoveWithAnimationCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String moveMaded});
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
    Object? userId = null,
    Object? moveMaded = null,
  }) {
    return _then(_$_MakeMoveWithAnimation(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == moveMaded
          ? _value.moveMaded
          : moveMaded // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MakeMoveWithAnimation
    with DiagnosticableTreeMixin
    implements _MakeMoveWithAnimation {
  const _$_MakeMoveWithAnimation(this.userId, this.moveMaded);

  @override
  final String userId;
  @override
  final String moveMaded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BattlefieldEvent.makeMoveWithAnimation(userId: $userId, moveMaded: $moveMaded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'BattlefieldEvent.makeMoveWithAnimation'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('moveMaded', moveMaded));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MakeMoveWithAnimation &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.moveMaded, moveMaded) ||
                other.moveMaded == moveMaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, moveMaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MakeMoveWithAnimationCopyWith<_$_MakeMoveWithAnimation> get copyWith =>
      __$$_MakeMoveWithAnimationCopyWithImpl<_$_MakeMoveWithAnimation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)
        manegeMoveFromApi,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithoutAnimation,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(PieceEntity piece, Coordenate coordenate)
        pieceSelectedInCoordenate,
  }) {
    return makeMoveWithAnimation(userId, moveMaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult? Function(String userId, String moveMaded)?
        makeMoveWithoutAnimation,
    TResult? Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
  }) {
    return makeMoveWithAnimation?.call(userId, moveMaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult Function(String userId, String moveMaded)? makeMoveWithoutAnimation,
    TResult Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
    required TResult orElse(),
  }) {
    if (makeMoveWithAnimation != null) {
      return makeMoveWithAnimation(userId, moveMaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManegeMoveFromApi value) manegeMoveFromApi,
    required TResult Function(_MakeMoveWithoutAnimation value)
        makeMoveWithoutAnimation,
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
  }) {
    return makeMoveWithAnimation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult? Function(_MakeMoveWithoutAnimation value)?
        makeMoveWithoutAnimation,
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
  }) {
    return makeMoveWithAnimation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult Function(_MakeMoveWithoutAnimation value)? makeMoveWithoutAnimation,
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
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
      final String userId, final String moveMaded) = _$_MakeMoveWithAnimation;

  String get userId;
  String get moveMaded;
  @JsonKey(ignore: true)
  _$$_MakeMoveWithAnimationCopyWith<_$_MakeMoveWithAnimation> get copyWith =>
      throw _privateConstructorUsedError;
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

class _$_Surrender with DiagnosticableTreeMixin implements _Surrender {
  const _$_Surrender(this.userThatSurrenderID);

  @override
  final String userThatSurrenderID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BattlefieldEvent.surrender(userThatSurrenderID: $userThatSurrenderID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BattlefieldEvent.surrender'))
      ..add(DiagnosticsProperty('userThatSurrenderID', userThatSurrenderID));
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
    required TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)
        manegeMoveFromApi,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithoutAnimation,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(PieceEntity piece, Coordenate coordenate)
        pieceSelectedInCoordenate,
  }) {
    return surrender(userThatSurrenderID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult? Function(String userId, String moveMaded)?
        makeMoveWithoutAnimation,
    TResult? Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
  }) {
    return surrender?.call(userThatSurrenderID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult Function(String userId, String moveMaded)? makeMoveWithoutAnimation,
    TResult Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
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
    required TResult Function(_ManegeMoveFromApi value) manegeMoveFromApi,
    required TResult Function(_MakeMoveWithoutAnimation value)
        makeMoveWithoutAnimation,
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
  }) {
    return surrender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult? Function(_MakeMoveWithoutAnimation value)?
        makeMoveWithoutAnimation,
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
  }) {
    return surrender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult Function(_MakeMoveWithoutAnimation value)? makeMoveWithoutAnimation,
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
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

class _$_PassTurn with DiagnosticableTreeMixin implements _PassTurn {
  const _$_PassTurn(this.userTurnID);

  @override
  final String userTurnID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BattlefieldEvent.passTurn(userTurnID: $userTurnID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BattlefieldEvent.passTurn'))
      ..add(DiagnosticsProperty('userTurnID', userTurnID));
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
    required TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)
        manegeMoveFromApi,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithoutAnimation,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(PieceEntity piece, Coordenate coordenate)
        pieceSelectedInCoordenate,
  }) {
    return passTurn(userTurnID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult? Function(String userId, String moveMaded)?
        makeMoveWithoutAnimation,
    TResult? Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
  }) {
    return passTurn?.call(userTurnID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult Function(String userId, String moveMaded)? makeMoveWithoutAnimation,
    TResult Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
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
    required TResult Function(_ManegeMoveFromApi value) manegeMoveFromApi,
    required TResult Function(_MakeMoveWithoutAnimation value)
        makeMoveWithoutAnimation,
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
  }) {
    return passTurn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult? Function(_MakeMoveWithoutAnimation value)?
        makeMoveWithoutAnimation,
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
  }) {
    return passTurn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult Function(_MakeMoveWithoutAnimation value)? makeMoveWithoutAnimation,
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
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

class _$_NotificateFailure
    with DiagnosticableTreeMixin
    implements _NotificateFailure {
  const _$_NotificateFailure(this.failure);

  @override
  final MatchFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BattlefieldEvent.notificateFailure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BattlefieldEvent.notificateFailure'))
      ..add(DiagnosticsProperty('failure', failure));
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
    required TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)
        manegeMoveFromApi,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithoutAnimation,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(PieceEntity piece, Coordenate coordenate)
        pieceSelectedInCoordenate,
  }) {
    return notificateFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult? Function(String userId, String moveMaded)?
        makeMoveWithoutAnimation,
    TResult? Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
  }) {
    return notificateFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult Function(String userId, String moveMaded)? makeMoveWithoutAnimation,
    TResult Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
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
    required TResult Function(_ManegeMoveFromApi value) manegeMoveFromApi,
    required TResult Function(_MakeMoveWithoutAnimation value)
        makeMoveWithoutAnimation,
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
  }) {
    return notificateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult? Function(_MakeMoveWithoutAnimation value)?
        makeMoveWithoutAnimation,
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
  }) {
    return notificateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult Function(_MakeMoveWithoutAnimation value)? makeMoveWithoutAnimation,
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
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
  $Res call({PieceEntity piece, Coordenate coordenate});
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
    Object? coordenate = null,
  }) {
    return _then(_$_BattlefieldPieceSelected(
      null == piece
          ? _value.piece
          : piece // ignore: cast_nullable_to_non_nullable
              as PieceEntity,
      null == coordenate
          ? _value.coordenate
          : coordenate // ignore: cast_nullable_to_non_nullable
              as Coordenate,
    ));
  }
}

/// @nodoc

class _$_BattlefieldPieceSelected
    with DiagnosticableTreeMixin
    implements _BattlefieldPieceSelected {
  const _$_BattlefieldPieceSelected(this.piece, this.coordenate);

  @override
  final PieceEntity piece;
  @override
  final Coordenate coordenate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BattlefieldEvent.pieceSelectedInCoordenate(piece: $piece, coordenate: $coordenate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'BattlefieldEvent.pieceSelectedInCoordenate'))
      ..add(DiagnosticsProperty('piece', piece))
      ..add(DiagnosticsProperty('coordenate', coordenate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BattlefieldPieceSelected &&
            (identical(other.piece, piece) || other.piece == piece) &&
            (identical(other.coordenate, coordenate) ||
                other.coordenate == coordenate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, piece, coordenate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BattlefieldPieceSelectedCopyWith<_$_BattlefieldPieceSelected>
      get copyWith => __$$_BattlefieldPieceSelectedCopyWithImpl<
          _$_BattlefieldPieceSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)
        manegeMoveFromApi,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithoutAnimation,
    required TResult Function(String userId, String moveMaded)
        makeMoveWithAnimation,
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(PieceEntity piece, Coordenate coordenate)
        pieceSelectedInCoordenate,
  }) {
    return pieceSelectedInCoordenate(piece, coordenate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult? Function(String userId, String moveMaded)?
        makeMoveWithoutAnimation,
    TResult? Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
  }) {
    return pieceSelectedInCoordenate?.call(piece, coordenate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<OldBoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        manegeMoveFromApi,
    TResult Function(String userId, String moveMaded)? makeMoveWithoutAnimation,
    TResult Function(String userId, String moveMaded)? makeMoveWithAnimation,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
    required TResult orElse(),
  }) {
    if (pieceSelectedInCoordenate != null) {
      return pieceSelectedInCoordenate(piece, coordenate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManegeMoveFromApi value) manegeMoveFromApi,
    required TResult Function(_MakeMoveWithoutAnimation value)
        makeMoveWithoutAnimation,
    required TResult Function(_MakeMoveWithAnimation value)
        makeMoveWithAnimation,
    required TResult Function(_Surrender value) surrender,
    required TResult Function(_PassTurn value) passTurn,
    required TResult Function(_NotificateFailure value) notificateFailure,
    required TResult Function(_BattlefieldPieceSelected value)
        pieceSelectedInCoordenate,
  }) {
    return pieceSelectedInCoordenate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult? Function(_MakeMoveWithoutAnimation value)?
        makeMoveWithoutAnimation,
    TResult? Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult? Function(_Surrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurn,
    TResult? Function(_NotificateFailure value)? notificateFailure,
    TResult? Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
  }) {
    return pieceSelectedInCoordenate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManegeMoveFromApi value)? manegeMoveFromApi,
    TResult Function(_MakeMoveWithoutAnimation value)? makeMoveWithoutAnimation,
    TResult Function(_MakeMoveWithAnimation value)? makeMoveWithAnimation,
    TResult Function(_Surrender value)? surrender,
    TResult Function(_PassTurn value)? passTurn,
    TResult Function(_NotificateFailure value)? notificateFailure,
    TResult Function(_BattlefieldPieceSelected value)?
        pieceSelectedInCoordenate,
    required TResult orElse(),
  }) {
    if (pieceSelectedInCoordenate != null) {
      return pieceSelectedInCoordenate(this);
    }
    return orElse();
  }
}

abstract class _BattlefieldPieceSelected implements BattlefieldEvent {
  const factory _BattlefieldPieceSelected(
          final PieceEntity piece, final Coordenate coordenate) =
      _$_BattlefieldPieceSelected;

  PieceEntity get piece;
  Coordenate get coordenate;
  @JsonKey(ignore: true)
  _$$_BattlefieldPieceSelectedCopyWith<_$_BattlefieldPieceSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BattlefieldState {
  List<UserStateEntity> get users => throw _privateConstructorUsedError;
  List<AnimationInField> get entities => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<UserStateEntity> users, List<AnimationInField> entities)
        normal,
    required TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<AnimationInField> entities,
            Coordenate selectedPieceCoordenate)
        pieceSelected,
    required TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<AnimationInField> entities)
        withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<UserStateEntity> users, List<AnimationInField> entities)?
        normal,
    TResult? Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<AnimationInField> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult? Function(MatchFailure failure, List<UserStateEntity> users,
            List<AnimationInField> entities)?
        withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<UserStateEntity> users, List<AnimationInField> entities)?
        normal,
    TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<AnimationInField> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<AnimationInField> entities)?
        withError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BattlefieldInitialState value) normal,
    required TResult Function(_PieceSelected value) pieceSelected,
    required TResult Function(_WithError value) withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BattlefieldInitialState value)? normal,
    TResult? Function(_PieceSelected value)? pieceSelected,
    TResult? Function(_WithError value)? withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BattlefieldInitialState value)? normal,
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
  $Res call({List<UserStateEntity> users, List<AnimationInField> entities});
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
    Object? entities = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserStateEntity>,
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<AnimationInField>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BattlefieldInitialStateCopyWith<$Res>
    implements $BattlefieldStateCopyWith<$Res> {
  factory _$$_BattlefieldInitialStateCopyWith(_$_BattlefieldInitialState value,
          $Res Function(_$_BattlefieldInitialState) then) =
      __$$_BattlefieldInitialStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserStateEntity> users, List<AnimationInField> entities});
}

/// @nodoc
class __$$_BattlefieldInitialStateCopyWithImpl<$Res>
    extends _$BattlefieldStateCopyWithImpl<$Res, _$_BattlefieldInitialState>
    implements _$$_BattlefieldInitialStateCopyWith<$Res> {
  __$$_BattlefieldInitialStateCopyWithImpl(_$_BattlefieldInitialState _value,
      $Res Function(_$_BattlefieldInitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? entities = null,
  }) {
    return _then(_$_BattlefieldInitialState(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserStateEntity>,
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<AnimationInField>,
    ));
  }
}

/// @nodoc

class _$_BattlefieldInitialState
    with DiagnosticableTreeMixin
    implements _BattlefieldInitialState {
  const _$_BattlefieldInitialState(
      {required final List<UserStateEntity> users,
      required final List<AnimationInField> entities})
      : _users = users,
        _entities = entities;

  final List<UserStateEntity> _users;
  @override
  List<UserStateEntity> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<AnimationInField> _entities;
  @override
  List<AnimationInField> get entities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BattlefieldState.normal(users: $users, entities: $entities)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BattlefieldState.normal'))
      ..add(DiagnosticsProperty('users', users))
      ..add(DiagnosticsProperty('entities', entities));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BattlefieldInitialState &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._entities, _entities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_entities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BattlefieldInitialStateCopyWith<_$_BattlefieldInitialState>
      get copyWith =>
          __$$_BattlefieldInitialStateCopyWithImpl<_$_BattlefieldInitialState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<UserStateEntity> users, List<AnimationInField> entities)
        normal,
    required TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<AnimationInField> entities,
            Coordenate selectedPieceCoordenate)
        pieceSelected,
    required TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<AnimationInField> entities)
        withError,
  }) {
    return normal(users, entities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<UserStateEntity> users, List<AnimationInField> entities)?
        normal,
    TResult? Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<AnimationInField> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult? Function(MatchFailure failure, List<UserStateEntity> users,
            List<AnimationInField> entities)?
        withError,
  }) {
    return normal?.call(users, entities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<UserStateEntity> users, List<AnimationInField> entities)?
        normal,
    TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<AnimationInField> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<AnimationInField> entities)?
        withError,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(users, entities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BattlefieldInitialState value) normal,
    required TResult Function(_PieceSelected value) pieceSelected,
    required TResult Function(_WithError value) withError,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BattlefieldInitialState value)? normal,
    TResult? Function(_PieceSelected value)? pieceSelected,
    TResult? Function(_WithError value)? withError,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BattlefieldInitialState value)? normal,
    TResult Function(_PieceSelected value)? pieceSelected,
    TResult Function(_WithError value)? withError,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class _BattlefieldInitialState implements BattlefieldState {
  const factory _BattlefieldInitialState(
          {required final List<UserStateEntity> users,
          required final List<AnimationInField> entities}) =
      _$_BattlefieldInitialState;

  @override
  List<UserStateEntity> get users;
  @override
  List<AnimationInField> get entities;
  @override
  @JsonKey(ignore: true)
  _$$_BattlefieldInitialStateCopyWith<_$_BattlefieldInitialState>
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
      {List<Coordenate> possiblePieceMovementArea,
      List<Coordenate> possiblePieceAttackArea,
      List<UserStateEntity> users,
      List<AnimationInField> entities,
      Coordenate selectedPieceCoordenate});
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
    Object? possiblePieceMovementArea = null,
    Object? possiblePieceAttackArea = null,
    Object? users = null,
    Object? entities = null,
    Object? selectedPieceCoordenate = null,
  }) {
    return _then(_$_PieceSelected(
      possiblePieceMovementArea: null == possiblePieceMovementArea
          ? _value._possiblePieceMovementArea
          : possiblePieceMovementArea // ignore: cast_nullable_to_non_nullable
              as List<Coordenate>,
      possiblePieceAttackArea: null == possiblePieceAttackArea
          ? _value._possiblePieceAttackArea
          : possiblePieceAttackArea // ignore: cast_nullable_to_non_nullable
              as List<Coordenate>,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserStateEntity>,
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<AnimationInField>,
      selectedPieceCoordenate: null == selectedPieceCoordenate
          ? _value.selectedPieceCoordenate
          : selectedPieceCoordenate // ignore: cast_nullable_to_non_nullable
              as Coordenate,
    ));
  }
}

/// @nodoc

class _$_PieceSelected with DiagnosticableTreeMixin implements _PieceSelected {
  const _$_PieceSelected(
      {required final List<Coordenate> possiblePieceMovementArea,
      required final List<Coordenate> possiblePieceAttackArea,
      required final List<UserStateEntity> users,
      required final List<AnimationInField> entities,
      required this.selectedPieceCoordenate})
      : _possiblePieceMovementArea = possiblePieceMovementArea,
        _possiblePieceAttackArea = possiblePieceAttackArea,
        _users = users,
        _entities = entities;

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

  final List<UserStateEntity> _users;
  @override
  List<UserStateEntity> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<AnimationInField> _entities;
  @override
  List<AnimationInField> get entities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  final Coordenate selectedPieceCoordenate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BattlefieldState.pieceSelected(possiblePieceMovementArea: $possiblePieceMovementArea, possiblePieceAttackArea: $possiblePieceAttackArea, users: $users, entities: $entities, selectedPieceCoordenate: $selectedPieceCoordenate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BattlefieldState.pieceSelected'))
      ..add(DiagnosticsProperty(
          'possiblePieceMovementArea', possiblePieceMovementArea))
      ..add(DiagnosticsProperty(
          'possiblePieceAttackArea', possiblePieceAttackArea))
      ..add(DiagnosticsProperty('users', users))
      ..add(DiagnosticsProperty('entities', entities))
      ..add(DiagnosticsProperty(
          'selectedPieceCoordenate', selectedPieceCoordenate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PieceSelected &&
            const DeepCollectionEquality().equals(
                other._possiblePieceMovementArea, _possiblePieceMovementArea) &&
            const DeepCollectionEquality().equals(
                other._possiblePieceAttackArea, _possiblePieceAttackArea) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._entities, _entities) &&
            (identical(
                    other.selectedPieceCoordenate, selectedPieceCoordenate) ||
                other.selectedPieceCoordenate == selectedPieceCoordenate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_possiblePieceMovementArea),
      const DeepCollectionEquality().hash(_possiblePieceAttackArea),
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_entities),
      selectedPieceCoordenate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PieceSelectedCopyWith<_$_PieceSelected> get copyWith =>
      __$$_PieceSelectedCopyWithImpl<_$_PieceSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<UserStateEntity> users, List<AnimationInField> entities)
        normal,
    required TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<AnimationInField> entities,
            Coordenate selectedPieceCoordenate)
        pieceSelected,
    required TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<AnimationInField> entities)
        withError,
  }) {
    return pieceSelected(possiblePieceMovementArea, possiblePieceAttackArea,
        users, entities, selectedPieceCoordenate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<UserStateEntity> users, List<AnimationInField> entities)?
        normal,
    TResult? Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<AnimationInField> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult? Function(MatchFailure failure, List<UserStateEntity> users,
            List<AnimationInField> entities)?
        withError,
  }) {
    return pieceSelected?.call(possiblePieceMovementArea,
        possiblePieceAttackArea, users, entities, selectedPieceCoordenate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<UserStateEntity> users, List<AnimationInField> entities)?
        normal,
    TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<AnimationInField> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<AnimationInField> entities)?
        withError,
    required TResult orElse(),
  }) {
    if (pieceSelected != null) {
      return pieceSelected(possiblePieceMovementArea, possiblePieceAttackArea,
          users, entities, selectedPieceCoordenate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BattlefieldInitialState value) normal,
    required TResult Function(_PieceSelected value) pieceSelected,
    required TResult Function(_WithError value) withError,
  }) {
    return pieceSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BattlefieldInitialState value)? normal,
    TResult? Function(_PieceSelected value)? pieceSelected,
    TResult? Function(_WithError value)? withError,
  }) {
    return pieceSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BattlefieldInitialState value)? normal,
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
      {required final List<Coordenate> possiblePieceMovementArea,
      required final List<Coordenate> possiblePieceAttackArea,
      required final List<UserStateEntity> users,
      required final List<AnimationInField> entities,
      required final Coordenate selectedPieceCoordenate}) = _$_PieceSelected;

  List<Coordenate> get possiblePieceMovementArea;
  List<Coordenate> get possiblePieceAttackArea;
  @override
  List<UserStateEntity> get users;
  @override
  List<AnimationInField> get entities;
  Coordenate get selectedPieceCoordenate;
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
      {MatchFailure failure,
      List<UserStateEntity> users,
      List<AnimationInField> entities});
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
    Object? failure = null,
    Object? users = null,
    Object? entities = null,
  }) {
    return _then(_$_WithError(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MatchFailure,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserStateEntity>,
      entities: null == entities
          ? _value._entities
          : entities // ignore: cast_nullable_to_non_nullable
              as List<AnimationInField>,
    ));
  }
}

/// @nodoc

class _$_WithError with DiagnosticableTreeMixin implements _WithError {
  const _$_WithError(
      {required this.failure,
      required final List<UserStateEntity> users,
      required final List<AnimationInField> entities})
      : _users = users,
        _entities = entities;

  @override
  final MatchFailure failure;
  final List<UserStateEntity> _users;
  @override
  List<UserStateEntity> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<AnimationInField> _entities;
  @override
  List<AnimationInField> get entities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BattlefieldState.withError(failure: $failure, users: $users, entities: $entities)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BattlefieldState.withError'))
      ..add(DiagnosticsProperty('failure', failure))
      ..add(DiagnosticsProperty('users', users))
      ..add(DiagnosticsProperty('entities', entities));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithError &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._entities, _entities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      failure,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_entities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithErrorCopyWith<_$_WithError> get copyWith =>
      __$$_WithErrorCopyWithImpl<_$_WithError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<UserStateEntity> users, List<AnimationInField> entities)
        normal,
    required TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<AnimationInField> entities,
            Coordenate selectedPieceCoordenate)
        pieceSelected,
    required TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<AnimationInField> entities)
        withError,
  }) {
    return withError(failure, users, entities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<UserStateEntity> users, List<AnimationInField> entities)?
        normal,
    TResult? Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<AnimationInField> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult? Function(MatchFailure failure, List<UserStateEntity> users,
            List<AnimationInField> entities)?
        withError,
  }) {
    return withError?.call(failure, users, entities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<UserStateEntity> users, List<AnimationInField> entities)?
        normal,
    TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<AnimationInField> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<AnimationInField> entities)?
        withError,
    required TResult orElse(),
  }) {
    if (withError != null) {
      return withError(failure, users, entities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BattlefieldInitialState value) normal,
    required TResult Function(_PieceSelected value) pieceSelected,
    required TResult Function(_WithError value) withError,
  }) {
    return withError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BattlefieldInitialState value)? normal,
    TResult? Function(_PieceSelected value)? pieceSelected,
    TResult? Function(_WithError value)? withError,
  }) {
    return withError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BattlefieldInitialState value)? normal,
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
      {required final MatchFailure failure,
      required final List<UserStateEntity> users,
      required final List<AnimationInField> entities}) = _$_WithError;

  MatchFailure get failure;
  @override
  List<UserStateEntity> get users;
  @override
  List<AnimationInField> get entities;
  @override
  @JsonKey(ignore: true)
  _$$_WithErrorCopyWith<_$_WithError> get copyWith =>
      throw _privateConstructorUsedError;
}
