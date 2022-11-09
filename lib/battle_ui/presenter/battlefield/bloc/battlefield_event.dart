part of 'battlefield_bloc.dart';

@freezed
class BattlefieldEvent with _$BattlefieldEvent {
  const factory BattlefieldEvent.pieceSelectedInCoordenate(
      PieceEntity piece, Coordenate coordenate) = _BattlefieldPieceSelected;

  const factory BattlefieldEvent.setPieces(List<BoardEntity> pieces) =
      _SetPieces;
}
