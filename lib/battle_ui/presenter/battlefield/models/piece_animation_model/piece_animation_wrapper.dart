import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class PieceAnimationWrapper {
  final CoordenatesInMove move;
  final bool madeReverseAnimation;
  final BoardEntity entity;
  const PieceAnimationWrapper({
    required this.move,
    required this.madeReverseAnimation,
    required this.entity,
  });
}
