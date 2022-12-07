import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import '../../domain/failures/match_failures.dart';

abstract class ProtocolBoardSource {
  const ProtocolBoardSource();

  Either<MatchFailure, BoardFieldEntity> createEntity(BoardFieldEntity entity);

  Either<MatchFailure, BoardFieldEntity> updateEntityWithId(
      String uniqueBoardEntityId, BoardFieldEntity entity);

  Either<MatchFailure, BoardFieldEntity> removeEntityWithId(
      String uniqueBoardEntityId);

  Either<MatchFailure, BoardFieldEntity> getEntityById(
      String uniqueBoardEntityId);

  Either<MatchFailure, List<BoardFieldEntity>> getAllEntitiesInCoordenate(
      Coordenate coordenate);

  Either<MatchFailure, List<BoardFieldEntity>> getEntitiesInTheBoard();

  Either<MatchFailure, List<Coordenate>> getFieldLimits();
}
