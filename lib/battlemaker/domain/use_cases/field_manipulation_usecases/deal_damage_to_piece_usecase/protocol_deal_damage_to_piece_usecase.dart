import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'param_deal_damage_to_piece_usecase.dart';
import 'return_deal_damage_to_piece_usecase.dart';

abstract class ProtocolDealDamageToPieceUsecase extends SyncUseCase<
    ReturnDealDamageToPieceUsecase, DealDamageToPieceParam> {
  // Returns true if the damage has killed the piece, if it was fatal.
  @override
  Either<MatchFailure, ReturnDealDamageToPieceUsecase> call(
      DealDamageToPieceParam param);
}
