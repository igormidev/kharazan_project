import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_piece_repository.dart';
import 'param_get_piece_valid_moves_usecase.dart';
import 'protocol_get_piece_valid_moves_usecase.dart';

class ImplGetPieceValidMovimentationUsecase
    implements ProtocolGetPieceValidMovesUsecase {
  final ProtocolPieceRepository _pieceRepository;
  final ProtocolBoardRepository _boardRepository;

  const ImplGetPieceValidMovimentationUsecase({
    required ProtocolPieceRepository pieceRepository,
    required ProtocolBoardRepository boardRepository,
  })  : _pieceRepository = pieceRepository,
        _boardRepository = boardRepository;

  @override
  Either<MatchFailure, List<Coordenate>> call(GetPieceValidMovesParam param) {
    final coordenatesResponse = _boardRepository.obtainCoordenatesInTheBoard();
    if (coordenatesResponse.isLeft()) return coordenatesResponse.asLeft();
    final field = coordenatesResponse.asRightResult;

    final pieceResponse =
        _pieceRepository.obtainPieceInCoordenate(param.coordenate);
    if (pieceResponse.isLeft()) return pieceResponse.asLeft();
    final pieceEntity = pieceResponse.asRightResult;
    final piece = pieceResponse.asRightResult.pieceState.piece;

    final possibleMovimentArea = piece.obtainMovesArea(pieceEntity.coordenate);
    final movesThatExistsInField =
        getCoordenatesInsideLimits(field, possibleMovimentArea);

    final entitiesResponse = _pieceRepository.obtainPiecesInTheBoard();
    if (entitiesResponse.isLeft()) return entitiesResponse.asLeft();
    final piecesInBoard = entitiesResponse.asRightResult.coordenatesInBoard;
    movesThatExistsInField.retainWhere((coordenate) {
      final contain = piecesInBoard.contains(coordenate) == false;
      return contain;
    });

    return right(movesThatExistsInField);
  }
}
