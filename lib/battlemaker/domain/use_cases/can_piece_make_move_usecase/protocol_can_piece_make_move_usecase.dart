import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

import 'param_can_piece_make_move_usecase.dart';

abstract class ProtocolCanPieceMakeMoveUsecase
    extends SyncUseCase<VoidSucess, ParamCanPieceMakeMoveUsecase> {
  @override
  Either<MatchFailure, VoidSucess> call(ParamCanPieceMakeMoveUsecase param);
}
