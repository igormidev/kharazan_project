import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battle_ui/domain/entities/animation_type.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

import 'param_wrap_piece_in_move_with_animation_model_usecase.dart';

abstract class ProtocolWrapPieceInMoveWithAnimationModelUsecase {
  Either<MatchFailure, List<AnimationTypeEntity>> call(
      ParamWrapPieceInMoveWithAnimationModelUsecase param);
}
