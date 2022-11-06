import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'param_get_piece_usecase.dart';
import 'protocol_get_piece_usecase.dart';

class ImplGetPieceUsecase implements ProtocolGetPieceUsecase {
  final ProtocolBoardRepository _repository;

  const ImplGetPieceUsecase({
    required ProtocolBoardRepository boardRepository,
  }) : _repository = boardRepository;

  @override
  Either<MatchFailure, PieceEntity> call(GetPieceParam param) {
    final coordenate = param.coordenates;
    final response = _repository.obtainPieceInCoordenate(coordenate);

    if (response.isLeft()) return response.asLeft();
    return response.asRight();
  }
}
