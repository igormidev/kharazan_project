import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'param_change_piece_position_usecase.dart';

abstract class ProtocolChangePiecePositionUsecase {
  FutureOr<Either<MatchFailure, VoidSucess>> call(
      ChangePiecePositionParam param);
}
