part of 'move_pipe_line.dart';

typedef PipeResult = Either<MatchFailure, MovePipeLineBuilder>;

extension PipeResultExtension on PipeResult {
  PipeResult changePiecePositionById(
    Coordenate oldPosition,
    Coordenate newPosition,
  ) {
    if (isLeft()) return asLeft();
    return _changePiecePositionById(oldPosition, newPosition, asRightResult);
  }

  PipeResult removePieceWithId(Coordenate coordenate) {
    if (isLeft()) return asLeft();
    return _removePieceWithId(coordenate, asRightResult);
  }

  PipeResult removeAllPieceMoveAnimationsUsecase() {
    if (isLeft()) return asLeft();
    return _removeAllPieceMoveAnimationsUsecase(asRightResult);
  }

  PipeResult addDamageIndicatorInCoordenate(int damage, Coordenate coordenate) {
    if (isLeft()) return asLeft();
    return _addDamageIndicatorInCoordenate(damage, coordenate, asRightResult);
  }

  Either<MatchFailure, ReturnExecuteTypedMoveUsecase> execute() {
    return castRight(
      (pipe) => ReturnExecuteTypedMoveUsecase(
        animationsInMove: pipe.animationInMove,
      ),
    );
  }

  PipeResult updatePieceEntityWithChangePositionAnimation({
    required String uniquePieceEntityId,
    required Coordenate originCoordenate,
    required Coordenate destinyCoordenate,
  }) {
    if (isLeft()) return asLeft();
    return _updatePieceToChangePositionAnimationStateUsecase(
      uniquePieceEntityId: uniquePieceEntityId,
      originCoordenate: originCoordenate,
      destinyCoordenate: destinyCoordenate,
      currentPipe: asRightResult,
    );
  }

  PipeResult updatePieceToMakingNonFatalAttackAnimationStateUsecase({
    required String uniquePieceEntityId,
    required Coordenate originCoordenate,
    required Coordenate destinyCoordenate,
  }) {
    if (isLeft()) return asLeft();
    return _updatePieceToMakingNonFatalAttackAnimationStateUsecase(
      uniquePieceEntityId: uniquePieceEntityId,
      originCoordenate: originCoordenate,
      destinyCoordenate: destinyCoordenate,
      currentPipe: asRightResult,
    );
  }

  PipeResult updatePieceToMakingFatalAttackAnimationStateUsecase({
    required String uniquePieceEntityId,
    required Coordenate originCoordenate,
    required Coordenate destinyCoordenate,
  }) {
    if (isLeft()) return asLeft();
    return _updatePieceToMakingFatalAttackAnimationStateUsecase(
      uniquePieceEntityId: uniquePieceEntityId,
      originCoordenate: originCoordenate,
      destinyCoordenate: destinyCoordenate,
      currentPipe: asRightResult,
    );
  }

  SetterDealDamageCase dealDamageToPieceWithId(String id, int damage) {
    final response = _dealDamageToPiece(
      currentPipe: asRightResult,
      uniquePieceEntityId: id,
      damage: damage,
    ).castRight((value) => value.didDamageKillTargetPiece);

    return SetterDealDamageCase(
      currentPipe: this,
      matchFailure: response.isLeft() ? response.asLeftResult : null,
      wasDamageFatalToTargetPiece:
          response.isRight() ? response.asRightResult : null,
    );
  }
}
