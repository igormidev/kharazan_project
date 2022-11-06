import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

class VoidSucess {}

abstract class UseCase<Output, Input> {
  FutureOr<Either<MatchFailure, Output>> call(Input param);
}
