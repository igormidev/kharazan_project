import 'dart:async';
import 'package:dartz/dartz.dart';
import 'return_get_match_states_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

abstract class ProtocolGetMatchStatesUsecase {
  FutureOr<Either<MatchFailure, ReturnGetMatchStatesUsecase>> call();
}
