import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/define_type_of_move_usecase/return_define_type_of_move_usecase.dart';

import 'param_define_type_of_move_usecase.dart';

abstract class ProtocolDefineTypeOfMoveUsecase {
  Either<MatchFailure, ReturnDefineTypeOfMoveUsecase> call(
      ParamDefineTypeOfMoveUsecase param);
}
