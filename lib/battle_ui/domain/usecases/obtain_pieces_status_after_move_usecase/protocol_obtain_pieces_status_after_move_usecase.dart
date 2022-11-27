import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battle_ui/domain/entities/animation_type.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

import 'param_obtain_pieces_status_after_move_usecase.dart';

abstract class ProtocolObtainPiecesStatusAfterMoveUsecase {
  Either<MatchFailure, List<AnimationTypeEntity>> call(
      ParamObtainPiecesStatusAfterMoveUsecase param);
}