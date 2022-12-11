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
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(PieceEntity piece, Coordenate coordenate)
        pieceSelectedInCoordenate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
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
      null == playerThatMakedMove
          ? _value.playerThatMakedMove
          : playerThatMakedMove // ignore: cast_nullable_to_non_nullable
              as String,
      null == moveMaded
          ? _value.moveMaded
          : moveMaded // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MakeMoveWithAnimation implements _MakeMoveWithAnimation {
  const _$_MakeMoveWithAnimation(this.playerThatMakedMove, this.moveMaded);

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
    required TResult Function(String userThatSurrenderID) surrender,
    required TResult Function(String userTurnID) passTurn,
    required TResult Function(MatchFailure failure) notificateFailure,
    required TResult Function(PieceEntity piece, Coordenate coordenate)
        pieceSelectedInCoordenate,
  }) {
    return makeMoveWithAnimation(playerThatMakedMove, moveMaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult? Function(String userThatSurrenderID)? surrender,
    TResult? Function(String userTurnID)? passTurn,
    TResult? Function(MatchFailure failure)? notificateFailure,
    TResult? Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
  }) {
    return makeMoveWithAnimation?.call(playerThatMakedMove, moveMaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
    TResult Function(String userThatSurrenderID)? surrender,
    TResult Function(String userTurnID)? passTurn,
    TResult Function(MatchFailure failure)? notificateFailure,
    TResult Function(PieceEntity piece, Coordenate coordenate)?
        pieceSelectedInCoordenate,
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
          final String playerThatMakedMove, final String moveMaded) =
      _$_MakeMoveWithAnimation;

  String get playerThatMakedMove;
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
    TResult? Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
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
    TResult Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
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
    TResult? Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
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
    TResult Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
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
    TResult? Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
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
    TResult Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
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

class _$_BattlefieldPieceSelected implements _BattlefieldPieceSelected {
  const _$_BattlefieldPieceSelected(this.piece, this.coordenate);

  @override
  final PieceEntity piece;
  @override
  final Coordenate coordenate;

  @override
  String toString() {
    return 'BattlefieldEvent.pieceSelectedInCoordenate(piece: $piece, coordenate: $coordenate)';
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
    required TResult Function(String playerThatMakedMove, String moveMaded)
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
    TResult? Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
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
    TResult Function(String playerThatMakedMove, String moveMaded)?
        makeMoveWithAnimation,
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
  List<BoardFieldEntity> get entities => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<UserStateEntity> users, List<BoardFieldEntity> entities)
        normal,
    required TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<BoardFieldEntity> entities,
            Coordenate selectedPieceCoordenate)
        pieceSelected,
    required TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<BoardFieldEntity> entities)
        withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<UserStateEntity> users, List<BoardFieldEntity> entities)?
        normal,
    TResult? Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<BoardFieldEntity> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult? Function(MatchFailure failure, List<UserStateEntity> users,
            List<BoardFieldEntity> entities)?
        withError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<UserStateEntity> users, List<BoardFieldEntity> entities)?
        normal,
    TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<BoardFieldEntity> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<BoardFieldEntity> entities)?
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
  $Res call({List<UserStateEntity> users, List<BoardFieldEntity> entities});
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
              as List<BoardFieldEntity>,
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
  $Res call({List<UserStateEntity> users, List<BoardFieldEntity> entities});
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
              as List<BoardFieldEntity>,
    ));
  }
}

/// @nodoc

class _$_BattlefieldInitialState implements _BattlefieldInitialState {
  const _$_BattlefieldInitialState(
      {required final List<UserStateEntity> users,
      required final List<BoardFieldEntity> entities})
      : _users = users,
        _entities = entities;

  final List<UserStateEntity> _users;
  @override
  List<UserStateEntity> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<BoardFieldEntity> _entities;
  @override
  List<BoardFieldEntity> get entities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  String toString() {
    return 'BattlefieldState.normal(users: $users, entities: $entities)';
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
            List<UserStateEntity> users, List<BoardFieldEntity> entities)
        normal,
    required TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<BoardFieldEntity> entities,
            Coordenate selectedPieceCoordenate)
        pieceSelected,
    required TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<BoardFieldEntity> entities)
        withError,
  }) {
    return normal(users, entities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<UserStateEntity> users, List<BoardFieldEntity> entities)?
        normal,
    TResult? Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<BoardFieldEntity> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult? Function(MatchFailure failure, List<UserStateEntity> users,
            List<BoardFieldEntity> entities)?
        withError,
  }) {
    return normal?.call(users, entities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<UserStateEntity> users, List<BoardFieldEntity> entities)?
        normal,
    TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<BoardFieldEntity> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<BoardFieldEntity> entities)?
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
          required final List<BoardFieldEntity> entities}) =
      _$_BattlefieldInitialState;

  @override
  List<UserStateEntity> get users;
  @override
  List<BoardFieldEntity> get entities;
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
      List<BoardFieldEntity> entities,
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
              as List<BoardFieldEntity>,
      selectedPieceCoordenate: null == selectedPieceCoordenate
          ? _value.selectedPieceCoordenate
          : selectedPieceCoordenate // ignore: cast_nullable_to_non_nullable
              as Coordenate,
    ));
  }
}

/// @nodoc

class _$_PieceSelected implements _PieceSelected {
  const _$_PieceSelected(
      {required final List<Coordenate> possiblePieceMovementArea,
      required final List<Coordenate> possiblePieceAttackArea,
      required final List<UserStateEntity> users,
      required final List<BoardFieldEntity> entities,
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

  final List<BoardFieldEntity> _entities;
  @override
  List<BoardFieldEntity> get entities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  final Coordenate selectedPieceCoordenate;

  @override
  String toString() {
    return 'BattlefieldState.pieceSelected(possiblePieceMovementArea: $possiblePieceMovementArea, possiblePieceAttackArea: $possiblePieceAttackArea, users: $users, entities: $entities, selectedPieceCoordenate: $selectedPieceCoordenate)';
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
            List<UserStateEntity> users, List<BoardFieldEntity> entities)
        normal,
    required TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<BoardFieldEntity> entities,
            Coordenate selectedPieceCoordenate)
        pieceSelected,
    required TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<BoardFieldEntity> entities)
        withError,
  }) {
    return pieceSelected(possiblePieceMovementArea, possiblePieceAttackArea,
        users, entities, selectedPieceCoordenate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<UserStateEntity> users, List<BoardFieldEntity> entities)?
        normal,
    TResult? Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<BoardFieldEntity> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult? Function(MatchFailure failure, List<UserStateEntity> users,
            List<BoardFieldEntity> entities)?
        withError,
  }) {
    return pieceSelected?.call(possiblePieceMovementArea,
        possiblePieceAttackArea, users, entities, selectedPieceCoordenate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<UserStateEntity> users, List<BoardFieldEntity> entities)?
        normal,
    TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<BoardFieldEntity> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<BoardFieldEntity> entities)?
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
      required final List<BoardFieldEntity> entities,
      required final Coordenate selectedPieceCoordenate}) = _$_PieceSelected;

  List<Coordenate> get possiblePieceMovementArea;
  List<Coordenate> get possiblePieceAttackArea;
  @override
  List<UserStateEntity> get users;
  @override
  List<BoardFieldEntity> get entities;
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
              as List<BoardFieldEntity>,
    ));
  }
}

/// @nodoc

class _$_WithError implements _WithError {
  const _$_WithError(
      {required this.failure,
      required final List<UserStateEntity> users,
      required final List<BoardFieldEntity> entities})
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

  final List<BoardFieldEntity> _entities;
  @override
  List<BoardFieldEntity> get entities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  String toString() {
    return 'BattlefieldState.withError(failure: $failure, users: $users, entities: $entities)';
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
            List<UserStateEntity> users, List<BoardFieldEntity> entities)
        normal,
    required TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<BoardFieldEntity> entities,
            Coordenate selectedPieceCoordenate)
        pieceSelected,
    required TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<BoardFieldEntity> entities)
        withError,
  }) {
    return withError(failure, users, entities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<UserStateEntity> users, List<BoardFieldEntity> entities)?
        normal,
    TResult? Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<BoardFieldEntity> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult? Function(MatchFailure failure, List<UserStateEntity> users,
            List<BoardFieldEntity> entities)?
        withError,
  }) {
    return withError?.call(failure, users, entities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<UserStateEntity> users, List<BoardFieldEntity> entities)?
        normal,
    TResult Function(
            List<Coordenate> possiblePieceMovementArea,
            List<Coordenate> possiblePieceAttackArea,
            List<UserStateEntity> users,
            List<BoardFieldEntity> entities,
            Coordenate selectedPieceCoordenate)?
        pieceSelected,
    TResult Function(MatchFailure failure, List<UserStateEntity> users,
            List<BoardFieldEntity> entities)?
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
      required final List<BoardFieldEntity> entities}) = _$_WithError;

  MatchFailure get failure;
  @override
  List<UserStateEntity> get users;
  @override
  List<BoardFieldEntity> get entities;
  @override
  @JsonKey(ignore: true)
  _$$_WithErrorCopyWith<_$_WithError> get copyWith =>
      throw _privateConstructorUsedError;
}
