import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

abstract class ProtocolBoardRepository {
  /// Obtain all the coordenates in the board
  ///
  /// That will represent the limits of the field
  Either<MatchFailure, List<Coordenate>> obtainCoordenatesInTheBoard();
}
