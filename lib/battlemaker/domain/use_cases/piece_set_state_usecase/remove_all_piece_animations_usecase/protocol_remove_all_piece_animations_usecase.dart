import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

abstract class ProtocolRemoveAllPieceAnimationsUsecase {
  Either<MatchFailure, VoidSucess> call();
}
