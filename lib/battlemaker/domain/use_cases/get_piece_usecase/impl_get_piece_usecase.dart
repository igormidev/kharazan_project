import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_piece_repository.dart';
import 'param_get_piece_usecase.dart';
import 'protocol_get_piece_usecase.dart';

class ImplGetPieceUsecase implements ProtocolGetPieceUsecase {
  final ProtocolPieceRepository _repository;

  const ImplGetPieceUsecase({
    required ProtocolPieceRepository boardRepository,
  }) : _repository = boardRepository;

  @override
  Either<MatchFailure, PieceEntity?> call(GetPieceParam param) {
    final coordenate = param.coordenates;
    final response = _repository.obtainPieceInCoordenate(coordenate);

    if (response.isLeft()) {
      // If there is no entity in the coordenate we will return null
      if (response.asLeftResult is NoEntityFoundInCoordenate) {
        return right(null);
      }

      // In case of other error, we will just return the error
      return response.asLeft();
    }
    return right(response.asRightResult.pieceState.piece);
  }
}
