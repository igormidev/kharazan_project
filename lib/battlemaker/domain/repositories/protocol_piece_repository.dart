import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

abstract class ProtocolPieceRepository {
  /// Returns the removed entity
  Either<MatchFailure, BoardPieceEntity> removePieceInCoordenate(
      Coordenate coordenate);

  /// Will return the piece created in the [boardId]
  Either<MatchFailure, BoardPieceEntity> createPieceInBoard(
      BoardPieceEntity entity);

  /// Will obtain the [BoardPieceEntity] in the [boardId] if exists,
  /// return a [MatchFailure.noPieceFoundInCoordenateToObtain] otherwise
  Either<MatchFailure, BoardPieceEntity> obtainPieceWithId(String boardId);

  /// Will update the entity with the same [boardId] with [boardPieceEntity]
  Either<MatchFailure, BoardPieceEntity> updatePieceEntityWithId({
    required String boardId,
    required BoardPieceEntity Function(BoardPieceEntity currentEntity)
        boardPieceEntity,
  });

  /// Obtain the entities in the board
  Either<MatchFailure, List<BoardPieceEntity>> obtainPiecesInTheBoard();
}
