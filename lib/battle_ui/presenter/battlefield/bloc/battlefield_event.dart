part of 'battlefield_bloc.dart';

@freezed
class BattlefieldEvent with _$BattlefieldEvent {
  const factory BattlefieldEvent.makeMove(
    final String userId,
    final String moveMaded,
  ) = _OnMoveMaked;

  const factory BattlefieldEvent.surrender(String userThatSurrenderID) =
      _Surrender;

  const factory BattlefieldEvent.passTurn(String userTurnID) = _PassTurn;

  const factory BattlefieldEvent.notificateFailure(MatchFailure failure) =
      _NotificateFailure;

  const factory BattlefieldEvent.pieceSelectedInCoordenate(
      PieceEntity piece, Coordenate coordenate) = _BattlefieldPieceSelected;

  const factory BattlefieldEvent.setMatchState() = _SetMatchState;

  const factory BattlefieldEvent.setPieces(List<BoardEntity> pieces) =
      _SetPieces;
}
