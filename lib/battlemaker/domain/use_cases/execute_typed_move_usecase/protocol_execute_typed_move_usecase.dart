import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/execute_typed_move_usecase/param_execute_typed_move_usecase.dart';

import 'return_execute_typed_move_usecase.dart';

abstract class ProtocolExecuteTypedMoveUsecase extends SyncUseCase<
    ReturnExecuteTypedMoveUsecase, ParamExecuteTypedMoveUsecase> {
  @override
  Either<MatchFailure, ReturnExecuteTypedMoveUsecase> call(
      ParamExecuteTypedMoveUsecase param);
}
