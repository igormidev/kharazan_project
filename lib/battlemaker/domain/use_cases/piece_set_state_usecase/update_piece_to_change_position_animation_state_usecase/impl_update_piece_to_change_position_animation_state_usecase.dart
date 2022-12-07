import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'param_update_piece_to_change_position_animation_state_usecase.dart';
import 'protocol_update_piece_to_change_position_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

class ImplUpdatePieceToChangePositionAnimationStateUsecase
    implements ProtocolUpdatePieceToChangePositionAnimationStateUsecase {
  @override
  Either<MatchFailure, VoidSucess> call(
    ParamUpdatePieceToChangePositionAnimationStateUsecase param,
  ) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
