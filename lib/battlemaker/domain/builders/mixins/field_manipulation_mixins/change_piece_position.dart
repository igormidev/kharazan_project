part of 'package:micro_kharazan/battlemaker/domain/builders/move_builder.dart';

mixin ChangePiecePosition<T> {
  abstract final MoveActions _moveAction;
  // ┌─────────────────────────────────────────────────────────
  // │ Switch the origin piece position to the
  // │ killed destiny piece position
  // └─────────────────────────────────────────────────────────
  T changePiecePositionById(Coordenate oldPosition, Coordenate newPosition) {
    assert(this is T);
    final changePiecePositionParam = ChangePiecePositionParam(
      originCoordenate: oldPosition,
      destinyCoordenate: newPosition,
    );
    final changeResponse =
        _moveAction._changePiecePositionUsecase(changePiecePositionParam);

    if (changeResponse.isLeft()) {
      _moveAction.failure = changeResponse.asLeftResult;
    }
    return this as T;
  }
}
