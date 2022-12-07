import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/piece_entity.dart';

part 'type_of_move_entity.freezed.dart';

@freezed
class TypeOfMoveEntity with _$TypeOfMoveEntity {
  const factory TypeOfMoveEntity.pieceChangingPosition({
    required CoordenatesInMove coordenatesInMove,
    required PieceEntity pieceInOrigin,
    required PieceEntity? pieceInDestiny,
    required List<BoardFieldEntity> otherBoardEntities,
  }) = _MoveTypeChangePiecePosition;

  const factory TypeOfMoveEntity.pieceAttackingOther({
    required CoordenatesInMove coordenatesInMove,
    required PieceEntity pieceInOrigin,
    required PieceEntity? pieceInDestiny,
    required List<BoardFieldEntity> otherBoardEntities,
  }) = _PieceAttackingOther;
}
