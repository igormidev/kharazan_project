import 'package:equatable/equatable.dart';

import 'package:micro_kharazan/battle_ui/domain/entities/animation_type.dart';

class ParamObtainPiecesStatusAfterMoveUsecase extends Equatable {
  final String move;
  final List<AnimationTypeEntity> entities;
  const ParamObtainPiecesStatusAfterMoveUsecase({
    required this.entities,
    required this.move,
  });

  @override
  List<Object> get props => [entities, move];
}
