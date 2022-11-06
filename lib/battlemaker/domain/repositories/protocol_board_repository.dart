import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

abstract class ProtocolBoardRepository {
  /// Obtain the piece in the [coordenate]
  Either<MatchFailure, PieceEntity> obtainPieceInCoordenate(
      Coordenate coordenate);

  /// Returns the removed entity
  Either<MatchFailure, BoardEntity> removeEntityInCoordenate(
      Coordenate coordenate);

  /// Returns the piece new piece after the update
  ///
  /// The returned piece from [pieceUpdate], will *replace* the
  /// piece in the [coordenate]
  Either<MatchFailure, PieceEntity> updatePieceInCoordenate(
    Coordenate coordenate,
    PieceEntity Function(PieceEntity pieceInTheCoordenate) pieceUpdate,
  );

  /// Will return the piece created in the [coordenate]
  Either<MatchFailure, PieceEntity> createPieceInCoordenate(
    Coordenate coordenate,
    PieceEntity piece,
    String pieceOwnerId,
  );

  /// Obtain all the coordenates in the board
  Either<MatchFailure, List<Coordenate>> obtainCoordenatesInTheBoard();

  Either<MatchFailure, BoardEntity> obtainBoardEntityInCoordenate(
      Coordenate coordenate);

  /// Obtain the entities in the board
  Either<MatchFailure, List<BoardEntity>> obtainEntitiesOfTheBoard();
}
