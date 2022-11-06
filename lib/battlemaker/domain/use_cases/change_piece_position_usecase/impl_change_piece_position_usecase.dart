import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'param_change_piece_position_usecase.dart';
import 'protocol_change_piece_position_usecase.dart';

class ImplChangePiecePositionUsecase
    implements ProtocolChangePiecePositionUsecase {
  final ProtocolBoardRepository _repository;

  const ImplChangePiecePositionUsecase({
    required ProtocolBoardRepository boardRepository,
  }) : _repository = boardRepository;

  @override
  FutureOr<Either<MatchFailure, VoidSucess>> call(
    ChangePiecePositionParam param,
  ) {
    final coordenate = param.coordenates;

    final removeResponse = _repository.removePieceInCoordenate(coordenate);
    if (removeResponse.isLeft()) return removeResponse.asLeft();
    final piece = removeResponse.asRightResult; // Removed piece
    final moveResponse = _repository.createPieceInCoordenate(coordenate, piece);
    if (moveResponse.isLeft()) return moveResponse.asLeft();

    return right(VoidSucess());
  }
}
