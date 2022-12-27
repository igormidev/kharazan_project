part of 'package:micro_kharazan/battlemaker/domain/builders/move_builder.dart';

// ┌─────────────────────────────────────────────────────────
// │ Now, let's update the piece in the field to the state of
// │ change position animation
// └─────────────────────────────────────────────────────────
mixin PutChangePieceAnimationPosition<T> {
  abstract final MoveActions _moveAction;

  T updatePieceEntityWithChangePositionAnimation({
    required String uniqueBoardId,
    required Coordenate origin,
    required Coordenate destiny,
  }) {
    assert(this is T);
    final animationParam =
        ParamUpdatePieceToChangePositionAnimationStateUsecase(
      uniqueBoardId: uniqueBoardId,
      originCoordenate: origin,
      destinyCoordenate: destiny,
    );
    final animationResponse = _moveAction
        ._updatePieceToChangePositionAnimationStateUsecase(animationParam);
    if (animationResponse.isLeft()) {
      _moveAction.failure = animationResponse.asLeftResult;
    }

    return this as T;
  }
}
