import 'package:micro_kharazan/battlemaker/data/source/protocol_board_source.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';

class ImplBoardRepository implements ProtocolBoardRepository {
  final ProtocolBoardSource _boardDataSource;
  ImplBoardRepository({required ProtocolBoardSource boardDataSource})
      : _boardDataSource = boardDataSource;

  @override
  Either<MatchFailure, List<Coordenate>> obtainCoordenatesInTheBoard() {
    return _boardDataSource.getFieldLimits();
  }
}
