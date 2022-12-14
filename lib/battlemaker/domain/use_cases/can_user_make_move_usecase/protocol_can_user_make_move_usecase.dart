import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'param_can_user_make_move_usecase.dart';

abstract class ProtocolCanUserMakeMoveUsecase {
  /// Returns a [VoidSucess] as a indicator that the user can make the move
  FutureOr<Either<MatchFailure, VoidSucess>> call(CanUserMakeMoveParam param);
}
