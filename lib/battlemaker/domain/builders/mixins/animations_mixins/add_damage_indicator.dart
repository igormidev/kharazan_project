part of 'package:micro_kharazan/battlemaker/domain/builders/move_builder.dart';

mixin AddDamageIndicatorInCoordenate<T> {
  abstract final MoveActions _moveAction;

  // ┌─────────────────────────────────────────────────────────
  // │ Create the ui of a damage indicator in the board so the
  // | user can have a feedback of the damage taked in the move
  // └─────────────────────────────────────────────────────────
  T addDamageIndicatorInCoordenate(
    int damage,
    Coordenate coordenate,
  ) {
    _moveAction.animationInMove.add(MoveAnimationEntity.damageIndicator(
      damageTaken: damage,
      duration: Constants.changeAttackAnimationTime,
      coordenate: coordenate,
    ));
    return this as T;
  }
}
