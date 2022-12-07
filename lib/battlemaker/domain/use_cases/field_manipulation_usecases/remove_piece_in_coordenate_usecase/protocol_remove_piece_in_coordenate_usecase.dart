import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

import 'param_remove_piece_in_coordenate_usecase.dart';

abstract class ProtocolRemovePieceInCoordenateUsecase
    extends SyncUseCase<VoidSucess, ParamRemovePieceInCoordenateUsecase> {
  @override
  Either<MatchFailure, VoidSucess> call(
      ParamRemovePieceInCoordenateUsecase param);
}
