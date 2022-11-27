import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'param_get_piece_usecase.dart';

abstract class ProtocolGetPieceUsecase
    extends SyncUseCase<PieceEntity?, GetPieceParam> {
  @override

  /// Returns null if dosen't exist a piece in the [GetPieceParam.coordenates]
  Either<MatchFailure, PieceEntity?> call(GetPieceParam param);
}
