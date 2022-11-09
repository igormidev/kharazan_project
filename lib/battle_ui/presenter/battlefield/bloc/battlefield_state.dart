part of 'battlefield_bloc.dart';

@freezed
class BattlefieldState with _$BattlefieldState {
  const factory BattlefieldState.initial({required List<BoardEntity> pieces}) =
      _BattlefieldInitialState;

  const factory BattlefieldState.pieceSelected({
    required List<Coordenate> possiblePieceMovementArea,
    required List<Coordenate> possiblePieceAttackArea,
    required List<BoardEntity> pieces,
  }) = _PieceSelected;

  const factory BattlefieldState.withError({
    required MatchFailure failure,
    required List<BoardEntity> pieces,
  }) = _WithError;
}
