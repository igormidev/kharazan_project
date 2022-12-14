import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

part 'move_animation_entity.freezed.dart';

@freezed
class MoveAnimationEntity with _$MoveAnimationEntity {
  const factory MoveAnimationEntity.damageIndicator({
    required int damageTaken,
    required Duration duration,
    required Coordenate coordenate,
  }) = _DamageIndicator;
}
