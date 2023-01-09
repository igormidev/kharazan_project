import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/data/source/protocol_board_source.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

class ImplBoardSource extends ProtocolBoardSource {
  final List<BoardFieldEntity> _entitiesInTheBoard;
  final List<Coordenate> _fieldLimits;
  const ImplBoardSource({
    required List<BoardFieldEntity> piecesInTheBoard,
    required List<Coordenate> fieldLimits,
  })  : _entitiesInTheBoard = piecesInTheBoard,
        _fieldLimits = fieldLimits;

  @override
  Either<MatchFailure, BoardFieldEntity> createEntity(
    BoardFieldEntity entity,
  ) {
    // Entity with same id can't exist, this is, the index has to be -1
    final index =
        _entitiesInTheBoard.indexWhere((e) => e.boardId == entity.boardId);
    if (index != -1) {
      return left(const MatchFailure.entityWithThatIdAlreadyExists());
    }

    _entitiesInTheBoard.add(entity);
    return right(entity);
  }

  @override
  Either<MatchFailure, BoardFieldEntity> updateEntityWithId(
      String uniqueBoardEntityId, BoardFieldEntity entity) {
    final index = _entitiesInTheBoard.entityIndexWithId(uniqueBoardEntityId);
    if (index == -1) return left(const MatchFailure.noPieceWithIdToUpdate());

    _entitiesInTheBoard[index] = entity;
    return right(entity);
  }

  @override
  Either<MatchFailure, BoardFieldEntity> removeEntityWithId(
      String uniqueBoardEntityId) {
    final index = _entitiesInTheBoard.entityIndexWithId(uniqueBoardEntityId);
    if (index == -1) {
      return left(const MatchFailure.noPieceWithIdToRemoveIt());
    }
    final BoardFieldEntity entity = _entitiesInTheBoard[index];
    _entitiesInTheBoard.removeAt(index);
    return right(entity);
  }

  @override
  Either<MatchFailure, BoardFieldEntity> getEntityById(
    String uniqueBoardEntityId,
  ) {
    final index = _entitiesInTheBoard.entityIndexWithId(uniqueBoardEntityId);
    if (index == -1) return left(const MatchFailure.noEntityWithId());

    return right(_entitiesInTheBoard[index]);
  }

  @override
  Either<MatchFailure, List<BoardFieldEntity>> getEntitiesInTheBoard() {
    return right(List.from(_entitiesInTheBoard));
  }

  @override
  Either<MatchFailure, List<Coordenate>> getFieldLimits() {
    return right(List.from(_fieldLimits));
  }

  @override
  Either<MatchFailure, List<BoardFieldEntity>> getAllEntitiesInCoordenate(
      Coordenate coordenate) {
    final entitiesInCoordenate = _entitiesInTheBoard
        .where((entity) => entity.coordenate == coordenate)
        .toList();

    return right(entitiesInCoordenate);
  }
}

extension _BoardListEntityExtension on List<BoardFieldEntity> {
  int entityIndexWithId(String uniqueBoardEntityId) =>
      indexWhere((entity) => entity.boardId == uniqueBoardEntityId);
}
