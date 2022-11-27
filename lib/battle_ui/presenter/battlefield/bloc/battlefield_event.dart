part of 'battlefield_bloc.dart';

@freezed
class BattlefieldEvent with _$BattlefieldEvent {
  const factory BattlefieldEvent.manegeMoveFromApi({
    required String userId,
    required CoordenatesInMove coordenatesInMove,
    required String playerUserTurnId,
    required List<BoardEntity> boardState,
    required List<UserStateEntity> usersInTheMatchState,
  }) = _ManegeMoveFromApi;

  const factory BattlefieldEvent.makeMoveWithoutAnimation(
    final String userId,
    final String moveMaded,
  ) = _MakeMoveWithoutAnimation;

  const factory BattlefieldEvent.makeMoveWithAnimation(
    final String userId,
    final String moveMaded,
  ) = _MakeMoveWithAnimation;

  const factory BattlefieldEvent.surrender(String userThatSurrenderID) =
      _Surrender;

  const factory BattlefieldEvent.passTurn(String userTurnID) = _PassTurn;

  const factory BattlefieldEvent.notificateFailure(MatchFailure failure) =
      _NotificateFailure;

  const factory BattlefieldEvent.pieceSelectedInCoordenate(
      PieceEntity piece, Coordenate coordenate) = _BattlefieldPieceSelected;
}
