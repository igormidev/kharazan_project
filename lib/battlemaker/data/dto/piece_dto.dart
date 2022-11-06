import 'package:micro_kharazan/battlemaker/domain/entities/collections/collection_pieces.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';

extension PieceDtoExtension on PieceEntity {
  PieceEntity copyWith({
    List<Move>? attackArea,
    List<Move>? moveArea,
    int? cost,
    int? life,
    int? damage,
  }) {
    return PieceEntity(
      uid: uid,
      name: name,
      description: description,
      moveArea: moveArea ?? this.moveArea,
      attackArea: attackArea ?? this.attackArea,
      cost: cost ?? this.cost,
      life: life ?? this.life,
      damage: damage ?? this.damage,
    );
  }
}
