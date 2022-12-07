import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_move_entities_usecase/param_get_move_entities_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_move_entities_usecase/return_get_move_entities_usecase.dart';

abstract class ProtocolGetMoveEntitiesUsecase extends SyncUseCase<
    ReturnGetMoveEntitiesUsecase, ParamGetMoveEntitiesUsecase> {
  @override
  Either<MatchFailure, ReturnGetMoveEntitiesUsecase> call(
      ParamGetMoveEntitiesUsecase param);
}
