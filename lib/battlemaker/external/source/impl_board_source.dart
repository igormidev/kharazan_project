import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/data/source/protocol_board_source.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

class ImplBoardSource extends ProtocolBoardSource {
  final List<BoardEntity> _entitiesInTheBoard;
  final List<Coordenate> _fieldLimits;
  const ImplBoardSource({
    required List<BoardEntity> piecesInTheBoard,
    required List<Coordenate> fieldLimits,
  })  : _entitiesInTheBoard = piecesInTheBoard,
        _fieldLimits = fieldLimits;

  @override
  Either<MatchFailure, BoardEntity> createEntityInCoordenate(
    BoardEntity entity,
  ) {
    // Piece can't exist, this is, the index has to be -1
    final index = _entitiesInTheBoard.entityIndexOf(entity.coordenate);
    if (index != -1) return left(EntityAlreadyExistsInCoordenate());

    _entitiesInTheBoard.add(entity);
    return right(entity);
  }

  @override
  Either<MatchFailure, BoardEntity> updateEntityInCoordenate(
      Coordenate coordenates, BoardEntity entity) {
    final index = _entitiesInTheBoard.entityIndexOf(coordenates);
    if (index == -1) return left(NoEntityFoundInCoordenate());

    try {
      _entitiesInTheBoard[index] = entity;
      return right(entity);
    } catch (_) {
      return left(NoEntityFoundInCoordenate());
    }
  }

  @override
  Either<MatchFailure, BoardEntity> removeEntityInCoordenate(
      Coordenate coordenates) {
    final index = _entitiesInTheBoard.entityIndexOf(coordenates);
    if (index == -1) return left(NoEntityFoundInCoordenate());
    final BoardEntity entity = _entitiesInTheBoard[index];
    _entitiesInTheBoard.removeAt(index);
    return right(entity);
  }

  @override
  Either<MatchFailure, BoardEntity> getEntityInCoordenate(
      Coordenate coordenates) {
    final index = _entitiesInTheBoard.entityIndexOf(coordenates);
    if (index == -1) return left(NoEntityFoundInCoordenate());
    try {
      return right(_entitiesInTheBoard[index]);
    } catch (_) {
      return left(NoEntityFoundInCoordenate());
    }
  }

  @override
  Either<MatchFailure, List<BoardEntity>> getEntitiesInTheBoard() {
    return right(List.from(_entitiesInTheBoard));
  }

  @override
  Either<MatchFailure, List<Coordenate>> getFieldLimits() {
    return right(List.from(_fieldLimits));
  }
}

extension _BoardListEntityExtension on List<BoardEntity> {
  int entityIndexOf(Coordenate coordenate) =>
      indexWhere((e) => e.coordenate == coordenate);
}
