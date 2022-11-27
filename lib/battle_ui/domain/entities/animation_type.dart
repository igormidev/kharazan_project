import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
part 'animation_type.freezed.dart';

@freezed
class AnimationTypeEntity with _$AnimationTypeEntity {
  factory AnimationTypeEntity.piece({
    required BoardEntity entity,
    required String uniqueId,
  }) = _NormalPiece;

  const factory AnimationTypeEntity.pieceChangePosition({
    required String uniqueId,
    required BoardEntity entity,
    required Coordenate originCoordenate,
    required Coordenate destinyCoordenate,
  }) = _PieceChangePosition;

  const factory AnimationTypeEntity.pieceMakeAttack({
    required BoardEntity entity,
    required String uniqueId,
    required Coordenate originCoordenate,
    required Coordenate destinyCoordenate,
  }) = _PieceAttackMove;
}
