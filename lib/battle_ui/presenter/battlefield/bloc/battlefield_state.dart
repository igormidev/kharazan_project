part of 'battlefield_bloc.dart';

@freezed
class BattlefieldState with _$BattlefieldState {
  const factory BattlefieldState.defaultState({
    required List<UserStateEntity> users,
    required List<BoardFieldEntity> entities,
  }) = _DefaultState;

  const factory BattlefieldState.defaultStateWithAnimations({
    required List<UserStateEntity> users,
    required List<BoardFieldEntity> entities,
    required List<MoveAnimationEntity> animationsInMove,
  }) = _DefaultStateWithAnimations;

  const factory BattlefieldState.pieceSelected({
    required List<Coordenate> possiblePieceMovementArea,
    required List<Coordenate> possiblePieceAttackArea,
    required List<UserStateEntity> users,
    required List<BoardFieldEntity> entities,
    required BoardPieceEntity selectedPiece,
  }) = _PieceSelected;

  const factory BattlefieldState.withError({
    required MatchFailure failure,
    required List<UserStateEntity> users,
    required List<BoardFieldEntity> entities,
  }) = _WithError;
}
