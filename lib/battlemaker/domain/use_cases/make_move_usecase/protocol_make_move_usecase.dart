import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/return_make_move_usecase.dart';
import 'param_make_move_usecase.dart';

abstract class ProtocolMakeMoveUsecase
    extends SyncUseCase<ReturnMakeMoveUsecase, MakeMoveParam> {
  @override
  Either<MatchFailure, ReturnMakeMoveUsecase> call(MakeMoveParam param);
}
