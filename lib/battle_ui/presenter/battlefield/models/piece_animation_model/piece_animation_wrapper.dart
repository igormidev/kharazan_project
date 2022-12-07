import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class PieceAnimationWrapper {
  final CoordenatesInMove move;
  final bool madeReverseAnimation;
  final OldBoardEntity entity;
  const PieceAnimationWrapper({
    required this.move,
    required this.madeReverseAnimation,
    required this.entity,
  });
}
