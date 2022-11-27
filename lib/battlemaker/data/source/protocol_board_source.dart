import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import '../../domain/failures/match_failures.dart';

abstract class ProtocolBoardSource {
  const ProtocolBoardSource();

  Either<MatchFailure, BoardEntity> createEntityInCoordenate(
      BoardEntity entity);

  Either<MatchFailure, BoardEntity> updateEntityInCoordenate(
      Coordenate coordenates, BoardEntity entity);

  Either<MatchFailure, BoardEntity> removeEntityInCoordenate(
      Coordenate coordenates);

  Either<MatchFailure, BoardEntity> getEntityInCoordenate(
      Coordenate coordenates);

  Either<MatchFailure, List<BoardEntity>> getEntitiesInTheBoard();

  Either<MatchFailure, List<Coordenate>> getFieldLimits();
}
