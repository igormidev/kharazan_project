part of 'battlefield_bloc.dart';

@freezed
class BattlefieldEvent with _$BattlefieldEvent {
  const factory BattlefieldEvent.makeMoveWithAnimation({
    required String playerThatMakedMove,
    required TypeOfMoveEntity moveMaded,
  }) = _MakeMoveWithAnimation;

  const factory BattlefieldEvent.updateBoardStateAfterMove({
    required String playerUserTurnId,
    required List<BoardFieldEntity> boardState,
    required List<UserStateEntity> usersInTheMatchState,
    required List<MoveAnimationEntity> animationsInMove,
  }) = _UpdateBoardStateAfterMove;

  const factory BattlefieldEvent.surrender(String userThatSurrenderID) =
      _Surrender;

  const factory BattlefieldEvent.passTurn(String userTurnID) = _PassTurn;

  const factory BattlefieldEvent.notificateFailure(MatchFailure failure) =
      _NotificateFailure;

  const factory BattlefieldEvent.pieceSelectedInCoordenate(
    BoardPieceEntity piece,
  ) = _BattlefieldPieceSelected;

  const factory BattlefieldEvent.unSelectPiece() = _UnSelectPiece;
}
