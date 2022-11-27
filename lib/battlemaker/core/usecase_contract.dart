import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

class VoidSucess extends Equatable {
  @override
  List<Object?> get props => [];
}

abstract class AyncUseCase<Output, Input extends Equatable> {
  FutureOr<Either<MatchFailure, Output>> call(Input param);
}

abstract class SyncUseCase<Output, Input extends Equatable> {
  Either<MatchFailure, Output> call(Input param);
}

abstract class SyncUseCaseWithoutParam<Output> {
  Either<MatchFailure, Output> call();
}
