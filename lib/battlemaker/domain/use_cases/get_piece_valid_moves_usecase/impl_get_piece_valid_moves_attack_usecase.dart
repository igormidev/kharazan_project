import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_piece_repository.dart';
import 'param_get_piece_valid_moves_usecase.dart';
import 'protocol_get_piece_valid_moves_usecase.dart';

class ImplGetPieceValidMovesAttackUsecase
    implements ProtocolGetPieceValidMovesUsecase {
  final ProtocolPieceRepository _pieceRepository;
  final ProtocolBoardRepository _boardRepository;

  const ImplGetPieceValidMovesAttackUsecase({
    required ProtocolPieceRepository pieceRepository,
    required ProtocolBoardRepository boardRepository,
  })  : _pieceRepository = pieceRepository,
        _boardRepository = boardRepository;

  @override
  Either<MatchFailure, List<Coordenate>> call(GetPieceValidMovesParam param) {
    final matchResponse = _boardRepository.obtainCoordenatesInTheBoard();
    if (matchResponse.isLeft()) return matchResponse.asLeft();
    final field = matchResponse.asRightResult;

    final entityResponse = _pieceRepository.obtainPieceWithId(param.boardId);
    if (entityResponse.isLeft()) return entityResponse.asLeft();
    final pieceEntity = entityResponse.asRightResult;
    final piece = entityResponse.asRightResult.pieceState.piece;

    final possibleAttackArea = piece.obtainAttackArea(pieceEntity.coordenate);
    final validAttackArea =
        getCoordenatesInsideLimits(field, possibleAttackArea);

    final entitiesResponse = _pieceRepository.obtainPiecesInTheBoard();
    if (entitiesResponse.isLeft()) return entitiesResponse.asLeft();
    final userIdOfPieceOwner = entityResponse.asRightResult.pieceOwnerId;
    final coordenatesWithSameTimePieces = entitiesResponse.asRightResult
        .where((entity) => entity.pieceOwnerId == userIdOfPieceOwner)
        .toList()
        .coordenatesInBoard;

    validAttackArea.retainWhere((coordenate) {
      final contain =
          coordenatesWithSameTimePieces.contains(coordenate) == false;
      return contain;
    });

    return right(validAttackArea);
  }
}
