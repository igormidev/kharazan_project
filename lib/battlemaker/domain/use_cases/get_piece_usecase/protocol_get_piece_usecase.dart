import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'param_get_piece_usecase.dart';

abstract class ProtocolGetPieceUsecase
    extends SyncUseCase<BoardPieceEntity?, GetPieceParam> {
  @override

  /// Returns null if dosen't exist a piece in the [GetPieceParam.coordenates]
  Either<MatchFailure, BoardPieceEntity?> call(GetPieceParam param);
}
