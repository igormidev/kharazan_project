import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'return_get_match_states_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

abstract class ProtocolGetMatchStatesUsecase
    extends SyncUseCaseWithoutParam<ReturnGetMatchStatesUsecase> {
  @override
  Either<MatchFailure, ReturnGetMatchStatesUsecase> call();
}
