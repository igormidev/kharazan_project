import 'package:equatable/equatable.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class ParamDefineTypeOfMoveUsecase extends Equatable {
  final CoordenatesInMove coordenatesInMove;
  final BoardPieceEntity pieceInOrigin;
  final BoardPieceEntity? pieceInDestiny;
  final List<BoardFieldEntity> otherBoardEntities;

  const ParamDefineTypeOfMoveUsecase({
    required this.coordenatesInMove,
    required this.pieceInOrigin,
    required this.pieceInDestiny,
    required this.otherBoardEntities,
  });

  @override
  List<Object> get props => [
        coordenatesInMove,
        pieceInOrigin,
        if (pieceInDestiny != null) pieceInDestiny!,
        otherBoardEntities
      ];
}
