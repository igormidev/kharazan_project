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
  /// return a [NoEntityFoundInCoordenate] otherwise
  Either<MatchFailure, BoardPieceEntity> obtainPieceInCoordenate(
      Coordenate coordenate);

  /// Obtain the entities in the board
  Either<MatchFailure, List<BoardPieceEntity>> obtainPiecesInTheBoard();
}
