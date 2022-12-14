// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'match_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)
        moveMaked,
    required TResult Function(String surrenderingUserId) surrender,
    required TResult Function(String userId) passTurnOtherToUser,
    required TResult Function(MatchFailure failure) errorOccoured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        moveMaked,
    TResult? Function(String surrenderingUserId)? surrender,
    TResult? Function(String userId)? passTurnOtherToUser,
    TResult? Function(MatchFailure failure)? errorOccoured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        moveMaked,
    TResult Function(String surrenderingUserId)? surrender,
    TResult Function(String userId)? passTurnOtherToUser,
    TResult Function(MatchFailure failure)? errorOccoured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoveMaked value) moveMaked,
    required TResult Function(_UserSurrender value) surrender,
    required TResult Function(_PassTurn value) passTurnOtherToUser,
    required TResult Function(_ErrorOccoured value) errorOccoured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoveMaked value)? moveMaked,
    TResult? Function(_UserSurrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurnOtherToUser,
    TResult? Function(_ErrorOccoured value)? errorOccoured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoveMaked value)? moveMaked,
    TResult Function(_UserSurrender value)? surrender,
    TResult Function(_PassTurn value)? passTurnOtherToUser,
    TResult Function(_ErrorOccoured value)? errorOccoured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchEventCopyWith<$Res> {
  factory $MatchEventCopyWith(
          MatchEvent value, $Res Function(MatchEvent) then) =
      _$MatchEventCopyWithImpl<$Res, MatchEvent>;
}

/// @nodoc
class _$MatchEventCopyWithImpl<$Res, $Val extends MatchEvent>
    implements $MatchEventCopyWith<$Res> {
  _$MatchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MoveMakedCopyWith<$Res> {
  factory _$$_MoveMakedCopyWith(
          _$_MoveMaked value, $Res Function(_$_MoveMaked) then) =
      __$$_MoveMakedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CoordenatesInMove coordenatesInMove,
      String playerUserTurnId,
      List<BoardEntity> boardState,
      List<UserStateEntity> usersInTheMatchState});
}

/// @nodoc
class __$$_MoveMakedCopyWithImpl<$Res>
    extends _$MatchEventCopyWithImpl<$Res, _$_MoveMaked>
    implements _$$_MoveMakedCopyWith<$Res> {
  __$$_MoveMakedCopyWithImpl(
      _$_MoveMaked _value, $Res Function(_$_MoveMaked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordenatesInMove = null,
    Object? playerUserTurnId = null,
    Object? boardState = null,
    Object? usersInTheMatchState = null,
  }) {
    return _then(_$_MoveMaked(
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
              as List<BoardEntity>,
      usersInTheMatchState: null == usersInTheMatchState
          ? _value._usersInTheMatchState
          : usersInTheMatchState // ignore: cast_nullable_to_non_nullable
              as List<UserStateEntity>,
    ));
  }
}

/// @nodoc

class _$_MoveMaked implements _MoveMaked {
  const _$_MoveMaked(
      {required this.coordenatesInMove,
      required this.playerUserTurnId,
      required final List<BoardEntity> boardState,
      required final List<UserStateEntity> usersInTheMatchState})
      : _boardState = boardState,
        _usersInTheMatchState = usersInTheMatchState;

  @override
  final CoordenatesInMove coordenatesInMove;
  @override
  final String playerUserTurnId;
  final List<BoardEntity> _boardState;
  @override
  List<BoardEntity> get boardState {
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
  String toString() {
    return 'MatchEvent.moveMaked(coordenatesInMove: $coordenatesInMove, playerUserTurnId: $playerUserTurnId, boardState: $boardState, usersInTheMatchState: $usersInTheMatchState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoveMaked &&
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
      coordenatesInMove,
      playerUserTurnId,
      const DeepCollectionEquality().hash(_boardState),
      const DeepCollectionEquality().hash(_usersInTheMatchState));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoveMakedCopyWith<_$_MoveMaked> get copyWith =>
      __$$_MoveMakedCopyWithImpl<_$_MoveMaked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)
        moveMaked,
    required TResult Function(String surrenderingUserId) surrender,
    required TResult Function(String userId) passTurnOtherToUser,
    required TResult Function(MatchFailure failure) errorOccoured,
  }) {
    return moveMaked(
        coordenatesInMove, playerUserTurnId, boardState, usersInTheMatchState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        moveMaked,
    TResult? Function(String surrenderingUserId)? surrender,
    TResult? Function(String userId)? passTurnOtherToUser,
    TResult? Function(MatchFailure failure)? errorOccoured,
  }) {
    return moveMaked?.call(
        coordenatesInMove, playerUserTurnId, boardState, usersInTheMatchState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        moveMaked,
    TResult Function(String surrenderingUserId)? surrender,
    TResult Function(String userId)? passTurnOtherToUser,
    TResult Function(MatchFailure failure)? errorOccoured,
    required TResult orElse(),
  }) {
    if (moveMaked != null) {
      return moveMaked(coordenatesInMove, playerUserTurnId, boardState,
          usersInTheMatchState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoveMaked value) moveMaked,
    required TResult Function(_UserSurrender value) surrender,
    required TResult Function(_PassTurn value) passTurnOtherToUser,
    required TResult Function(_ErrorOccoured value) errorOccoured,
  }) {
    return moveMaked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoveMaked value)? moveMaked,
    TResult? Function(_UserSurrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurnOtherToUser,
    TResult? Function(_ErrorOccoured value)? errorOccoured,
  }) {
    return moveMaked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoveMaked value)? moveMaked,
    TResult Function(_UserSurrender value)? surrender,
    TResult Function(_PassTurn value)? passTurnOtherToUser,
    TResult Function(_ErrorOccoured value)? errorOccoured,
    required TResult orElse(),
  }) {
    if (moveMaked != null) {
      return moveMaked(this);
    }
    return orElse();
  }
}

abstract class _MoveMaked implements MatchEvent {
  const factory _MoveMaked(
          {required final CoordenatesInMove coordenatesInMove,
          required final String playerUserTurnId,
          required final List<BoardEntity> boardState,
          required final List<UserStateEntity> usersInTheMatchState}) =
      _$_MoveMaked;

  CoordenatesInMove get coordenatesInMove;
  String get playerUserTurnId;
  List<BoardEntity> get boardState;
  List<UserStateEntity> get usersInTheMatchState;
  @JsonKey(ignore: true)
  _$$_MoveMakedCopyWith<_$_MoveMaked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserSurrenderCopyWith<$Res> {
  factory _$$_UserSurrenderCopyWith(
          _$_UserSurrender value, $Res Function(_$_UserSurrender) then) =
      __$$_UserSurrenderCopyWithImpl<$Res>;
  @useResult
  $Res call({String surrenderingUserId});
}

/// @nodoc
class __$$_UserSurrenderCopyWithImpl<$Res>
    extends _$MatchEventCopyWithImpl<$Res, _$_UserSurrender>
    implements _$$_UserSurrenderCopyWith<$Res> {
  __$$_UserSurrenderCopyWithImpl(
      _$_UserSurrender _value, $Res Function(_$_UserSurrender) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surrenderingUserId = null,
  }) {
    return _then(_$_UserSurrender(
      surrenderingUserId: null == surrenderingUserId
          ? _value.surrenderingUserId
          : surrenderingUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserSurrender implements _UserSurrender {
  const _$_UserSurrender({required this.surrenderingUserId});

  @override
  final String surrenderingUserId;

  @override
  String toString() {
    return 'MatchEvent.surrender(surrenderingUserId: $surrenderingUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSurrender &&
            (identical(other.surrenderingUserId, surrenderingUserId) ||
                other.surrenderingUserId == surrenderingUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surrenderingUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserSurrenderCopyWith<_$_UserSurrender> get copyWith =>
      __$$_UserSurrenderCopyWithImpl<_$_UserSurrender>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)
        moveMaked,
    required TResult Function(String surrenderingUserId) surrender,
    required TResult Function(String userId) passTurnOtherToUser,
    required TResult Function(MatchFailure failure) errorOccoured,
  }) {
    return surrender(surrenderingUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        moveMaked,
    TResult? Function(String surrenderingUserId)? surrender,
    TResult? Function(String userId)? passTurnOtherToUser,
    TResult? Function(MatchFailure failure)? errorOccoured,
  }) {
    return surrender?.call(surrenderingUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        moveMaked,
    TResult Function(String surrenderingUserId)? surrender,
    TResult Function(String userId)? passTurnOtherToUser,
    TResult Function(MatchFailure failure)? errorOccoured,
    required TResult orElse(),
  }) {
    if (surrender != null) {
      return surrender(surrenderingUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoveMaked value) moveMaked,
    required TResult Function(_UserSurrender value) surrender,
    required TResult Function(_PassTurn value) passTurnOtherToUser,
    required TResult Function(_ErrorOccoured value) errorOccoured,
  }) {
    return surrender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoveMaked value)? moveMaked,
    TResult? Function(_UserSurrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurnOtherToUser,
    TResult? Function(_ErrorOccoured value)? errorOccoured,
  }) {
    return surrender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoveMaked value)? moveMaked,
    TResult Function(_UserSurrender value)? surrender,
    TResult Function(_PassTurn value)? passTurnOtherToUser,
    TResult Function(_ErrorOccoured value)? errorOccoured,
    required TResult orElse(),
  }) {
    if (surrender != null) {
      return surrender(this);
    }
    return orElse();
  }
}

abstract class _UserSurrender implements MatchEvent {
  const factory _UserSurrender({required final String surrenderingUserId}) =
      _$_UserSurrender;

  String get surrenderingUserId;
  @JsonKey(ignore: true)
  _$$_UserSurrenderCopyWith<_$_UserSurrender> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PassTurnCopyWith<$Res> {
  factory _$$_PassTurnCopyWith(
          _$_PassTurn value, $Res Function(_$_PassTurn) then) =
      __$$_PassTurnCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$_PassTurnCopyWithImpl<$Res>
    extends _$MatchEventCopyWithImpl<$Res, _$_PassTurn>
    implements _$$_PassTurnCopyWith<$Res> {
  __$$_PassTurnCopyWithImpl(
      _$_PassTurn _value, $Res Function(_$_PassTurn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_PassTurn(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PassTurn implements _PassTurn {
  const _$_PassTurn({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'MatchEvent.passTurnOtherToUser(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PassTurn &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PassTurnCopyWith<_$_PassTurn> get copyWith =>
      __$$_PassTurnCopyWithImpl<_$_PassTurn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)
        moveMaked,
    required TResult Function(String surrenderingUserId) surrender,
    required TResult Function(String userId) passTurnOtherToUser,
    required TResult Function(MatchFailure failure) errorOccoured,
  }) {
    return passTurnOtherToUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        moveMaked,
    TResult? Function(String surrenderingUserId)? surrender,
    TResult? Function(String userId)? passTurnOtherToUser,
    TResult? Function(MatchFailure failure)? errorOccoured,
  }) {
    return passTurnOtherToUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        moveMaked,
    TResult Function(String surrenderingUserId)? surrender,
    TResult Function(String userId)? passTurnOtherToUser,
    TResult Function(MatchFailure failure)? errorOccoured,
    required TResult orElse(),
  }) {
    if (passTurnOtherToUser != null) {
      return passTurnOtherToUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoveMaked value) moveMaked,
    required TResult Function(_UserSurrender value) surrender,
    required TResult Function(_PassTurn value) passTurnOtherToUser,
    required TResult Function(_ErrorOccoured value) errorOccoured,
  }) {
    return passTurnOtherToUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoveMaked value)? moveMaked,
    TResult? Function(_UserSurrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurnOtherToUser,
    TResult? Function(_ErrorOccoured value)? errorOccoured,
  }) {
    return passTurnOtherToUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoveMaked value)? moveMaked,
    TResult Function(_UserSurrender value)? surrender,
    TResult Function(_PassTurn value)? passTurnOtherToUser,
    TResult Function(_ErrorOccoured value)? errorOccoured,
    required TResult orElse(),
  }) {
    if (passTurnOtherToUser != null) {
      return passTurnOtherToUser(this);
    }
    return orElse();
  }
}

abstract class _PassTurn implements MatchEvent {
  const factory _PassTurn({required final String userId}) = _$_PassTurn;

  String get userId;
  @JsonKey(ignore: true)
  _$$_PassTurnCopyWith<_$_PassTurn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorOccouredCopyWith<$Res> {
  factory _$$_ErrorOccouredCopyWith(
          _$_ErrorOccoured value, $Res Function(_$_ErrorOccoured) then) =
      __$$_ErrorOccouredCopyWithImpl<$Res>;
  @useResult
  $Res call({MatchFailure failure});
}

/// @nodoc
class __$$_ErrorOccouredCopyWithImpl<$Res>
    extends _$MatchEventCopyWithImpl<$Res, _$_ErrorOccoured>
    implements _$$_ErrorOccouredCopyWith<$Res> {
  __$$_ErrorOccouredCopyWithImpl(
      _$_ErrorOccoured _value, $Res Function(_$_ErrorOccoured) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_ErrorOccoured(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as MatchFailure,
    ));
  }
}

/// @nodoc

class _$_ErrorOccoured implements _ErrorOccoured {
  const _$_ErrorOccoured({required this.failure});

  @override
  final MatchFailure failure;

  @override
  String toString() {
    return 'MatchEvent.errorOccoured(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorOccoured &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorOccouredCopyWith<_$_ErrorOccoured> get copyWith =>
      __$$_ErrorOccouredCopyWithImpl<_$_ErrorOccoured>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)
        moveMaked,
    required TResult Function(String surrenderingUserId) surrender,
    required TResult Function(String userId) passTurnOtherToUser,
    required TResult Function(MatchFailure failure) errorOccoured,
  }) {
    return errorOccoured(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        moveMaked,
    TResult? Function(String surrenderingUserId)? surrender,
    TResult? Function(String userId)? passTurnOtherToUser,
    TResult? Function(MatchFailure failure)? errorOccoured,
  }) {
    return errorOccoured?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardEntity> boardState,
            List<UserStateEntity> usersInTheMatchState)?
        moveMaked,
    TResult Function(String surrenderingUserId)? surrender,
    TResult Function(String userId)? passTurnOtherToUser,
    TResult Function(MatchFailure failure)? errorOccoured,
    required TResult orElse(),
  }) {
    if (errorOccoured != null) {
      return errorOccoured(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoveMaked value) moveMaked,
    required TResult Function(_UserSurrender value) surrender,
    required TResult Function(_PassTurn value) passTurnOtherToUser,
    required TResult Function(_ErrorOccoured value) errorOccoured,
  }) {
    return errorOccoured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoveMaked value)? moveMaked,
    TResult? Function(_UserSurrender value)? surrender,
    TResult? Function(_PassTurn value)? passTurnOtherToUser,
    TResult? Function(_ErrorOccoured value)? errorOccoured,
  }) {
    return errorOccoured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoveMaked value)? moveMaked,
    TResult Function(_UserSurrender value)? surrender,
    TResult Function(_PassTurn value)? passTurnOtherToUser,
    TResult Function(_ErrorOccoured value)? errorOccoured,
    required TResult orElse(),
  }) {
    if (errorOccoured != null) {
      return errorOccoured(this);
    }
    return orElse();
  }
}

abstract class _ErrorOccoured implements MatchEvent {
  const factory _ErrorOccoured({required final MatchFailure failure}) =
      _$_ErrorOccoured;

  MatchFailure get failure;
  @JsonKey(ignore: true)
  _$$_ErrorOccouredCopyWith<_$_ErrorOccoured> get copyWith =>
      throw _privateConstructorUsedError;
}
