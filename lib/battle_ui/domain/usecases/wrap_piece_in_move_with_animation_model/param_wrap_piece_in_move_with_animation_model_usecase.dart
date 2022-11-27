import 'package:equatable/equatable.dart';

import 'package:micro_kharazan/battle_ui/domain/entities/animation_type.dart';

class ParamWrapPieceInMoveWithAnimationModelUsecase extends Equatable {
  final String move;
  final List<AnimationTypeEntity> entities;
  const ParamWrapPieceInMoveWithAnimationModelUsecase({
    required this.move,
    required this.entities,
  });

  @override
  List<Object> get props => [move, entities];
}
