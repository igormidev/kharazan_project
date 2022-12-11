import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

import 'param_update_piece_to_making_non_fatal_attack_animation_state_usecase.dart';

abstract class ProtocolUpdatePieceToMakingNonFatalAttackAnimationStateUsecase
    extends SyncUseCase<VoidSucess,
        ParamUpdatePieceToMakingNonFatalAttackAnimationStateUsecase> {
  @override
  Either<MatchFailure, VoidSucess> call(
      ParamUpdatePieceToMakingNonFatalAttackAnimationStateUsecase param);
}
