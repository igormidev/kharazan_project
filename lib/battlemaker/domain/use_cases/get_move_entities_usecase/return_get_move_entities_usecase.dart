import 'package:equatable/equatable.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';

class ReturnGetMoveEntitiesUsecase extends Equatable {
  final CoordenatesInMove coordenatesInMove;
  final BoardPieceEntity pieceInOrigin;
  final BoardPieceEntity? pieceInDestiny;
  final List<BoardFieldEntity> otherBoardEntities;

  /// Uses the [CoordenatesInMove.origin] as reference to
  /// determine the possible movements
  final List<Coordenate> possibleOriginPieceMovements;

  /// Uses the [CoordenatesInMove.origin] as reference to
  /// determine the possible attacks
  final List<Coordenate> possibleOriginPieceAttacks;

  const ReturnGetMoveEntitiesUsecase({
    required this.coordenatesInMove,
    required this.pieceInOrigin,
    required this.pieceInDestiny,
    required this.otherBoardEntities,
    required this.possibleOriginPieceMovements,
    required this.possibleOriginPieceAttacks,
  });

  @override
  List<Object> get props => [
        coordenatesInMove,
        pieceInOrigin,
        otherBoardEntities,
        if (pieceInDestiny != null) pieceInDestiny!,
        possibleOriginPieceMovements,
        possibleOriginPieceAttacks,
      ];
}
