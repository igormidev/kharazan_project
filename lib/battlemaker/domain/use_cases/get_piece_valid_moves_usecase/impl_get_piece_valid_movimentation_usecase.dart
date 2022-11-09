import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'param_get_piece_valid_moves_usecase.dart';
import 'protocol_get_piece_valid_moves_usecase.dart';

class ImplGetPieceValidMovimentationUsecase
    implements ProtocolGetPieceValidMovesUsecase {
  final ProtocolBoardRepository _boardRepository;

  const ImplGetPieceValidMovimentationUsecase({
    required ProtocolBoardRepository boardRepository,
  }) : _boardRepository = boardRepository;

  @override
  FutureOr<Either<MatchFailure, List<Coordenate>>> call(
      GetPieceValidMovesParam param) {
    final coordenate = param.coordenate;

    final coordenatesResponse = _boardRepository.obtainCoordenatesInTheBoard();
    if (coordenatesResponse.isLeft()) return coordenatesResponse.asLeft();
    final field = coordenatesResponse.asRightResult;

    final entitiesResponse = _boardRepository.obtainEntitiesInTheBoard();
    if (entitiesResponse.isLeft()) return entitiesResponse.asLeft();
    final piecesInBoard = entitiesResponse.asRightResult.coordenatesInBoard;
    field.retainWhere((coordenate) {
      final list = piecesInBoard.contains(coordenate) == false;
      return list;
    });

    final pieceResponse = _boardRepository.obtainPieceInCoordenate(coordenate);
    if (pieceResponse.isLeft()) return pieceResponse.asLeft();
    final piece = pieceResponse.asRightResult;

    final possibleMovimentArea = piece.obtainMovesArea(param.coordenate);
    final validMovesArea =
        getCoordenatesInsideLimits(field, possibleMovimentArea);

    return right(validMovesArea);
  }
}
