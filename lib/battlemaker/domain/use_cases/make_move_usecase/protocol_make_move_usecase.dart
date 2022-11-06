import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/return_make_move_usecase.dart';
import 'param_make_move_usecase.dart';

abstract class ProtocolMakeMoveUsecase {
  FutureOr<Either<MatchFailure, ReturnMakeMoveUsecase>> call(
      MakeMoveParam param);
}
