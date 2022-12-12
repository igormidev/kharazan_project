import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

abstract class ProtocolPieceRepository {
  /// Returns the removed entity
  Either<MatchFailure, BoardPieceEntity> removePieceInCoordenate(
      Coordenate coordenate);

  /// Will return the piece created in the [coordenate]
  Either<MatchFailure, BoardPieceEntity> createPieceInBoard(
      BoardPieceEntity entity);

  /// Will obtain the [BoardPieceEntity] in the [coordenate] if exists,
  /// return a [NoPieceFoundInCoordenate] otherwise
  Either<MatchFailure, BoardPieceEntity> obtainPieceInCoordenate(
      Coordenate coordenate);

  /// Will update the entity with the same [uniqueBoardId] with [boardPieceEntity]
  Either<MatchFailure, BoardPieceEntity> updatePieceEntityWithId(
    String uniqueBoardId,
    BoardPieceEntity Function(BoardPieceEntity currentEntity) boardPieceEntity,
  );

  /// Obtain the entities in the board
  Either<MatchFailure, List<BoardPieceEntity>> obtainPiecesInTheBoard();
}
