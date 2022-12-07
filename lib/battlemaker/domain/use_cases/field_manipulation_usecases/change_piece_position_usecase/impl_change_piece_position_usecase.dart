import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_piece_repository.dart';
import 'param_change_piece_position_usecase.dart';
import 'protocol_change_piece_position_usecase.dart';

class ImplChangePiecePositionUsecase
    implements ProtocolChangePiecePositionUsecase {
  final ProtocolPieceRepository _repository;

  const ImplChangePiecePositionUsecase({
    required ProtocolPieceRepository boardRepository,
  }) : _repository = boardRepository;

  @override
  Either<MatchFailure, VoidSucess> call(
    ChangePiecePositionParam param,
  ) {
    final origin = param.originCoordenate;
    final destiny = param.destinyCoordenate;
    final removeResponse = _repository.removePieceInCoordenate(origin);
    if (removeResponse.isLeft()) return removeResponse.asLeft();
    final BoardPieceEntity entity =
        removeResponse.asRightResult; // Removed entity

    final newEntityWithMove = entity.copyWith(
      coordenate: destiny,
      pieceState: entity.pieceState,
    );
    final moveResponse = _repository.createPieceInBoard(newEntityWithMove);
    if (moveResponse.isLeft()) return moveResponse.asLeft();

    return right(VoidSucess());
  }
}
