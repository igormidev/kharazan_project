import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/data/source/protocol_board_source.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';

class ImplBoardRepository implements ProtocolBoardRepository {
  final ProtocolBoardSource _boardDataSource;

  const ImplBoardRepository(ProtocolBoardSource boardDataSource)
      : _boardDataSource = boardDataSource;

  @override
  Either<MatchFailure, PieceEntity> createPieceInCoordenate(
      Coordenate coordenate, PieceEntity piece, String pieceOwnerId) {
    final entity = BoardEntity(
      coordenate: coordenate,
      piece: piece,
      pieceOwnerId: pieceOwnerId,
    );
    final createResponse = _boardDataSource.createEntityInCoordenate(entity);
    if (createResponse.isLeft()) return createResponse.asLeft();
    return createResponse.castRight((entity) => entity.piece);
  }

  @override
  Either<MatchFailure, List<Coordenate>> obtainCoordenatesInTheBoard() {
    final getEntitiesResponse = _boardDataSource.getFieldLimits();

    if (getEntitiesResponse.isLeft()) return getEntitiesResponse.asLeft();
    return getEntitiesResponse;
  }

  @override
  Either<MatchFailure, PieceEntity> obtainPieceInCoordenate(
      Coordenate coordenate) {
    final getEntityResponse =
        _boardDataSource.getEntityInCoordenate(coordenate);

    if (getEntityResponse.isLeft()) return getEntityResponse.asLeft();
    return getEntityResponse.castRight((entity) => entity.piece);
  }

  @override
  Either<MatchFailure, BoardEntity> removeEntityInCoordenate(
      Coordenate coordenate) {
    final getEntityResponse =
        _boardDataSource.removeEntityInCoordenate(coordenate);

    if (getEntityResponse.isLeft()) return getEntityResponse.asLeft();
    return right(getEntityResponse.asRightResult);
  }

  @override
  Either<MatchFailure, PieceEntity> updatePieceInCoordenate(
      Coordenate coordenate,
      PieceEntity Function(PieceEntity pieceInTheCoordenate) pieceUpdate) {
    final pieceResponse = obtainBoardEntityInCoordenate(coordenate);
    if (pieceResponse.isLeft()) return pieceResponse.asLeft();
    final entity = pieceResponse.asRightResult;
    final piece = pieceUpdate(entity.piece);

    final newEntity = BoardEntity(
      coordenate: coordenate,
      piece: piece,
      pieceOwnerId: entity.pieceOwnerId,
    );

    final responseUpdate =
        _boardDataSource.updateEntityInCoordenate(coordenate, newEntity);
    if (responseUpdate.isLeft()) return responseUpdate.asLeft();
    return right(responseUpdate.asRightResult.piece);
  }

  @override
  Either<MatchFailure, List<BoardEntity>> obtainEntitiesInTheBoard() {
    final getEntitiesResponse = _boardDataSource.getEntitiesInTheBoard();

    if (getEntitiesResponse.isLeft()) return getEntitiesResponse.asLeft();
    return right(getEntitiesResponse.asRightResult);
  }

  @override
  Either<MatchFailure, BoardEntity> obtainBoardEntityInCoordenate(
      Coordenate coordenate) {
    final entityResponse = _boardDataSource.getEntityInCoordenate(coordenate);
    if (entityResponse.isLeft()) return entityResponse.asLeft();
    final entity = entityResponse.asRightResult;
    return right(entity);
  }
}
