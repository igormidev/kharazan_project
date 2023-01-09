import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/validate_if_move_is_possible_usecase/param_validate_if_move_is_possible_usecase.dart';

abstract class ProtocolValidateIfMoveIsPossibleUsecase
    extends SyncUseCase<VoidSucess, ParamValidateIfMoveIsPossibleUsecase> {
  @override
  Either<MatchFailure, VoidSucess> call(
      ParamValidateIfMoveIsPossibleUsecase param);
}
