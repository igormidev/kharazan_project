import 'package:equatable/equatable.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class ParamCanPieceMakeMoveUsecase extends Equatable {
  final CoordenatesInMove coordenatesInMove;
  final BoardPieceEntity pieceInOrigin;
  final BoardPieceEntity? pieceInDestiny;

  final List<Coordenate> possibleOriginPieceMovements;
  final List<Coordenate> possibleOriginPieceAttacks;

  const ParamCanPieceMakeMoveUsecase({
    required this.coordenatesInMove,
    required this.pieceInOrigin,
    required this.pieceInDestiny,
    required this.possibleOriginPieceMovements,
    required this.possibleOriginPieceAttacks,
  });

  @override
  List<Object> get props => [
        coordenatesInMove,
        pieceInOrigin,
        if (pieceInDestiny != null) pieceInDestiny!,
        possibleOriginPieceMovements,
        possibleOriginPieceAttacks,
      ];
}
