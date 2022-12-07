import 'package:equatable/equatable.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/piece_entity.dart';

class ReturnGetMoveEntitiesUsecase extends Equatable {
  final CoordenatesInMove coordenatesInMove;
  final PieceEntity pieceInOrigin;
  final PieceEntity? pieceInDestiny;
  final List<BoardFieldEntity> otherBoardEntities;

  const ReturnGetMoveEntitiesUsecase({
    required this.coordenatesInMove,
    required this.pieceInOrigin,
    required this.pieceInDestiny,
    required this.otherBoardEntities,
  });

  @override
  List<Object> get props => [
        coordenatesInMove,
        pieceInOrigin,
        otherBoardEntities,
        if (pieceInDestiny != null) pieceInDestiny!,
      ];
}
