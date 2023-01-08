part of 'move_pipe_line.dart';

PipeResult _changePiecePositionById(
  Coordenate oldPosition,
  Coordenate newPosition,
  MovePipeLineBuilder currentPipe,
) {
  final param = ChangePiecePositionParam(
    originCoordenate: oldPosition,
    destinyCoordenate: newPosition,
  );
  return currentPipe
      ._changePiecePositionUsecase(param)
      .castRight((_) => currentPipe);
}

PipeResult _removePieceWithId(
  Coordenate coordenate,
  MovePipeLineBuilder currentPipe,
) {
  final param = ParamRemovePieceInCoordenateUsecase(coordenate: coordenate);
  return currentPipe
      ._removePieceInCoordenateUsecase(param)
      .castRight((_) => currentPipe);
}

PipeResult _updatePieceToChangePositionAnimationStateUsecase({
  required String uniquePieceEntityId,
  required Coordenate originCoordenate,
  required Coordenate destinyCoordenate,
  required MovePipeLineBuilder currentPipe,
}) {
  final param = ParamUpdatePieceToChangePositionAnimationStateUsecase(
    uniqueBoardId: uniquePieceEntityId,
    originCoordenate: originCoordenate,
    destinyCoordenate: destinyCoordenate,
  );
  return currentPipe
      ._updatePieceToChangePositionAnimationStateUsecase(param)
      .castRight((_) => currentPipe);
}

PipeResult _updatePieceToMakingNonFatalAttackAnimationStateUsecase({
  required String uniquePieceEntityId,
  required Coordenate originCoordenate,
  required Coordenate destinyCoordenate,
  required MovePipeLineBuilder currentPipe,
}) {
  final param = ParamUpdatePieceToMakingNonFatalAttackAnimationStateUsecase(
    uniquePieceEntityId: uniquePieceEntityId,
    originCoordenate: originCoordenate,
    destinyCoordenate: destinyCoordenate,
  );
  return currentPipe._updatePieceToMakingNonFatalAttackAnimationStateUsecase
      .call(param)
      .castRight((_) => currentPipe);
}

PipeResult _updatePieceToMakingFatalAttackAnimationStateUsecase({
  required String uniquePieceEntityId,
  required Coordenate originCoordenate,
  required Coordenate destinyCoordenate,
  required MovePipeLineBuilder currentPipe,
}) {
  final param = ParamUpdatePieceToMakingFatalAttackAnimationStateUsecase(
    uniquePieceEntityId: uniquePieceEntityId,
    originCoordenate: originCoordenate,
    destinyCoordenate: destinyCoordenate,
  );
  return currentPipe._updatePieceToMakingFatalAttackAnimationStateUsecase
      .call(param)
      .castRight((_) => currentPipe);
}

PipeResult _removeAllPieceMoveAnimationsUsecase(
  MovePipeLineBuilder currentPipe,
) {
  return currentPipe
      ._removeAllPieceAnimationsUsecase()
      .castRight((_) => currentPipe);
}

Either<MatchFailure, ReturnDealDamageToPieceUsecase> _dealDamageToPiece({
  required String uniquePieceEntityId,
  required int damage,
  required MovePipeLineBuilder currentPipe,
}) {
  final param = DealDamageToPieceParam(
    uniquePieceEntityId: uniquePieceEntityId,
    damage: damage,
  );
  return currentPipe._dealDamageToPieceUsecase(param);
}

PipeResult _addDamageIndicatorInCoordenate(
  int damage,
  Coordenate coordenate,
  MovePipeLineBuilder currentPipe,
) {
  currentPipe.animationInMove.add(MoveAnimationEntity.damageIndicator(
    damageTaken: damage,
    coordenate: coordenate,
    duration: Constants.changeAttackAnimationTime,
  ));
  return right(currentPipe);
}

class SetterDealDamageCase {
  final PipeResult _currentPipe;
  final bool? _wasDamageFatalToTargetPiece;
  final MatchFailure? _matchFailure;

  const SetterDealDamageCase({
    required PipeResult currentPipe,
    required bool? wasDamageFatalToTargetPiece,
    required MatchFailure? matchFailure,
  })  : _matchFailure = matchFailure,
        _wasDamageFatalToTargetPiece = wasDamageFatalToTargetPiece,
        _currentPipe = currentPipe;

  PipeResult configureDealDamageCases({
    required PipeResult Function(MovePipeLineBuilder pipe)
        onFatalDamageToTargetPiece,
    required PipeResult Function(MovePipeLineBuilder pipe)
        onNotFatalDamageToTargetPiece,
  }) {
    if (_wasDamageFatalToTargetPiece == null) return left(_matchFailure!);

    if (_currentPipe.isLeft()) return _currentPipe.asLeft();

    if (_wasDamageFatalToTargetPiece!) {
      return onFatalDamageToTargetPiece(_currentPipe.asRightResult);
    } else {
      return onNotFatalDamageToTargetPiece(_currentPipe.asRightResult);
    }
  }
}
