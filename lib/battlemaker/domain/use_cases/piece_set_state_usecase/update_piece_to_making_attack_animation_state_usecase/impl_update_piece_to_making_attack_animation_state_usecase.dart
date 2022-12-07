import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'protocol_update_piece_to_making_attack_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_attack_animation_state_usecase/param_update_piece_to_making_attack_animation_state_usecase.dart';

class ImplUpdatePieceToMakingAttackAnimationStateUsecase
    implements ProtocolUpdatePieceToMakingAttackAnimationStateUsecase {
  @override
  Either<MatchFailure, VoidSucess> call(
    ParamUpdatePieceToMakingAttackAnimationStateUsecase param,
  ) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
