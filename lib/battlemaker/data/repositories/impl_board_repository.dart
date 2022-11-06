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
      Coordenate coordenate, PieceEntity piece) {
    final entity = BoardEntity(
      coordenate: coordenate,
      piece: piece,
    );
    final createResponse = _boardDataSource.createEntityInCoordenate(entity);
    if (createResponse.isLeft()) return createResponse.asLeft();
    return createResponse.castRight((entity) => entity.piece);
  }

  @override
  Either<MatchFailure, List<Coordenate>> obtainCoordenatesInTheBoard() {
    final getEntitiesResponse = _boardDataSource.getEntitiesInTheBoard();

    if (getEntitiesResponse.isLeft()) return getEntitiesResponse.asLeft();
    return getEntitiesResponse
        .castRight((entities) => entities.map((e) => e.coordenate).toList());
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
  Either<MatchFailure, PieceEntity> removePieceInCoordenate(
      Coordenate coordenate) {
    final getEntityResponse =
        _boardDataSource.removeEntityInCoordenate(coordenate);

    if (getEntityResponse.isLeft()) return getEntityResponse.asLeft();
    return right(getEntityResponse.asRightResult.piece);
  }

  @override
  Either<MatchFailure, PieceEntity> updatePieceInCoordenate(
      Coordenate coordenate,
      PieceEntity Function(PieceEntity pieceInTheCoordenate) pieceUpdate) {
    final pieceResponse = obtainPieceInCoordenate(coordenate);
    if (pieceResponse.isLeft()) return pieceResponse.asLeft();
    final piece = pieceUpdate(pieceResponse.asRightResult);

    final entity = BoardEntity(coordenate: coordenate, piece: piece);

    final responseUpdate =
        _boardDataSource.updateEntityInCoordenate(coordenate, entity);
    if (responseUpdate.isLeft()) return responseUpdate.asLeft();
    return right(responseUpdate.asRightResult.piece);
  }

  @override
  Either<MatchFailure, List<BoardEntity>> obtainEntitiesOfTheBoard() {
    final getEntitiesResponse = _boardDataSource.getEntitiesInTheBoard();

    if (getEntitiesResponse.isLeft()) return getEntitiesResponse.asLeft();
    return right(getEntitiesResponse.asRightResult);
  }
}
