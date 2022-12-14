import 'package:equatable/equatable.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/move_animation_entity.dart';

class ReturnExecuteTypedMoveUsecase extends Equatable {
  final List<MoveAnimationEntity> animationsInMove;

  const ReturnExecuteTypedMoveUsecase({required this.animationsInMove});

  @override
  List<Object> get props => [animationsInMove];
}
