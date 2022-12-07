import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

import 'param_update_piece_to_change_position_animation_state_usecase.dart';

abstract class ProtocolUpdatePieceToChangePositionAnimationStateUsecase
    extends SyncUseCase<VoidSucess,
        ParamUpdatePieceToChangePositionAnimationStateUsecase> {
  @override
  Either<MatchFailure, VoidSucess> call(
      ParamUpdatePieceToChangePositionAnimationStateUsecase param);
}
