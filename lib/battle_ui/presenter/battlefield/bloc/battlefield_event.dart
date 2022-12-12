part of 'battlefield_bloc.dart';

@freezed
class BattlefieldEvent with _$BattlefieldEvent {
  const factory BattlefieldEvent.makeMoveWithAnimation({
    required String playerThatMakedMove,
    required String moveMaded,
  }) = _MakeMoveWithAnimation;

  const factory BattlefieldEvent.updateBoardStateAfterMove({
    required CoordenatesInMove coordenatesInMove,
    required String playerUserTurnId,
    required List<BoardFieldEntity> boardState,
    required List<UserStateEntity> usersInTheMatchState,
  }) = _UpdateBoardStateAfterMove;

  const factory BattlefieldEvent.surrender(String userThatSurrenderID) =
      _Surrender;

  const factory BattlefieldEvent.passTurn(String userTurnID) = _PassTurn;

  const factory BattlefieldEvent.notificateFailure(MatchFailure failure) =
      _NotificateFailure;

  const factory BattlefieldEvent.pieceSelectedInCoordenate(
      PieceEntity piece, Coordenate coordenate) = _BattlefieldPieceSelected;
}
