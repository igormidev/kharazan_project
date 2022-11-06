import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'param_get_piece_valid_moves_usecase.dart';
import 'protocol_get_piece_valid_moves_usecase.dart';

class ImplGetPieceValidMovesAttackUsecase
    implements ProtocolGetPieceValidMovesUsecase {
  final ProtocolBoardRepository _boardRepository;

  const ImplGetPieceValidMovesAttackUsecase({
    required ProtocolBoardRepository boardRepository,
  }) : _boardRepository = boardRepository;

  @override
  FutureOr<Either<MatchFailure, List<Coordenate>>> call(
      GetPieceValidMovesParam param) {
    final coordenate = param.coordenate;

    final matchResponse = _boardRepository.obtainCoordenatesInTheBoard();
    if (matchResponse.isLeft()) return matchResponse.asLeft();
    final match = matchResponse.asRightResult;

    final pieceResponse = _boardRepository.obtainPieceInCoordenate(coordenate);
    if (pieceResponse.isLeft()) return pieceResponse.asLeft();
    final piece = pieceResponse.asRightResult;

    final possibleAttackArea = piece.obtainMovesArea(param.coordenate);
    final validAttackArea = getLeftJoinCoordenates(match, possibleAttackArea);
    return right(validAttackArea);
  }
}
