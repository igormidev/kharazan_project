import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/data/source/protocol_board_source.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_piece_repository.dart';
import 'package:micro_kharazan/sandbox_logger/sand_custom_logs.dart';

class ImplPieceRepository implements ProtocolPieceRepository {
  final ProtocolBoardSource _boardDataSource;

  const ImplPieceRepository({required ProtocolBoardSource boardDataSource})
      : _boardDataSource = boardDataSource;

  @override
  Either<MatchFailure, BoardPieceEntity> createPieceInBoard(
      BoardPieceEntity entity) {
    final createResponse = _boardDataSource.createEntity(entity);
    if (createResponse.isLeft()) return createResponse.asLeft();
    final pieceCreated = createResponse.asRightResult;

    if (pieceCreated is BoardPieceEntity) {
      return right(pieceCreated);
    } else {
      return left(const MatchFailure.notAValidResponse());
    }
  }

  @override
  Either<MatchFailure, BoardPieceEntity> removePieceInCoordenate(
      Coordenate coordenate) {
    final entityResponse =
        _boardDataSource.getAllEntitiesInCoordenate(coordenate);
    if (entityResponse.isLeft()) return entityResponse.asLeft();

    final listEntities = entityResponse.asRightResult;
    final pieceEntity = listEntities.singleWhereOrNull((entity) {
      return entity.coordenate == coordenate;
    });

    if (pieceEntity.isNull) {
      return left(const MatchFailure.noPieceWithCoordenateToRemoveIt());
    }

    final removedPieceResponse =
        _boardDataSource.removeEntityWithId(pieceEntity!.boardId);
    if (removedPieceResponse.isLeft()) return removedPieceResponse.asLeft();

    final pieceRemoved = removedPieceResponse.asRightResult;
    if (pieceRemoved is BoardPieceEntity) {
      return right(pieceRemoved);
    } else {
      return left(const MatchFailure.notAValidResponse());
    }
  }

  @override
  Either<MatchFailure, List<BoardPieceEntity>> obtainPiecesInTheBoard() {
    final getEntitiesResponse = _boardDataSource.getEntitiesInTheBoard();
    if (getEntitiesResponse.isLeft()) return getEntitiesResponse.asLeft();

    final allEntitiesInBoard = getEntitiesResponse.asRightResult;

    final List<BoardPieceEntity> pieceEntities = allEntitiesInBoard
        .map<BoardPieceEntity?>(
          (entity) => entity.maybeMap<BoardPieceEntity?>(
            piece: (piece) => piece,
            orElse: () => null,
          ),
        )
        .toList()
        .removeNull;

    return right(pieceEntities);
  }

  @override
  Either<MatchFailure, BoardPieceEntity> obtainPieceInCoordenate(
      Coordenate coordenate) {
    final entityResponse =
        _boardDataSource.getAllEntitiesInCoordenate(coordenate);
    if (entityResponse.isLeft()) return entityResponse.asLeft();

    final listEntities = entityResponse.asRightResult;
    final pieceEntity = listEntities.singleWhereOrNull((entity) {
      return (entity.coordenate == coordenate) && (entity is BoardPieceEntity);
    });

    if (pieceEntity == null) {
      return left(const MatchFailure.noPieceFoundInCoordenateToObtain());
    }
    if (pieceEntity is BoardPieceEntity) {
      return right(pieceEntity);
    } else {
      return left(const MatchFailure.notAValidResponse());
    }
  }

  @override
  Either<MatchFailure, BoardPieceEntity> updatePieceEntityWithId({
    required String boardId,
    required BoardPieceEntity Function(BoardPieceEntity currentEntity)
        boardPieceEntity,
  }) {
    final entityResponse = _boardDataSource.getEntityById(boardId);
    if (entityResponse.isLeft()) return entityResponse.asLeft();
    final entity = entityResponse.asRightResult;
    if (entity is! BoardPieceEntity) {
      return left(const MatchFailure.notAValidResponse());
    }

    final response =
        _boardDataSource.updateEntityWithId(boardId, boardPieceEntity(entity));
    if (response.isLeft()) return response.asLeft();

    final pieceEntity = response.asRightResult;
    if (pieceEntity is BoardPieceEntity) return right(pieceEntity);
    return left(const MatchFailure.notAValidResponse());
  }
}
