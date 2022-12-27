part of 'package:micro_kharazan/battlemaker/domain/builders/move_builder.dart';

mixin RemovePieceAnimations<T> {
  abstract final MoveActions _moveAction;
  // ┌─────────────────────────────────────────────────────────
  // │ Remove all current animations in pieces, replacing it
  // │ to the default piece state without animation
  // └─────────────────────────────────────────────────────────
  T removePieceAnimations() {
    final removePieceAnimationResponse =
        _moveAction._removeAllPieceAnimationsUsecase();
    if (removePieceAnimationResponse.isLeft()) {
      _moveAction.failure = removePieceAnimationResponse.asLeftResult;
    }

    return this as T;
  }
}
