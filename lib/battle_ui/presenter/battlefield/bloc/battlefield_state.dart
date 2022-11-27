part of 'battlefield_bloc.dart';

@freezed
class BattlefieldState with _$BattlefieldState {
  const factory BattlefieldState.normal({
    required List<UserStateEntity> users,
    required List<AnimationTypeEntity> entities,
  }) = _BattlefieldInitialState;

  const factory BattlefieldState.pieceSelected({
    required List<Coordenate> possiblePieceMovementArea,
    required List<Coordenate> possiblePieceAttackArea,
    required List<UserStateEntity> users,
    required List<AnimationTypeEntity> entities,
    required Coordenate selectedPieceCoordenate,
  }) = _PieceSelected;

  const factory BattlefieldState.withError({
    required MatchFailure failure,
    required List<UserStateEntity> users,
    required List<AnimationTypeEntity> entities,
  }) = _WithError;
}
