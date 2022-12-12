import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/data/dto/piece_dto.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_piece_repository.dart';
import 'param_deal_damage_to_piece_usecase.dart';
import 'protocol_deal_damage_to_piece_usecase.dart';
import 'return_deal_damage_to_piece_usecase.dart';

class ImplDealDamageToPieceUsecase implements ProtocolDealDamageToPieceUsecase {
  final ProtocolPieceRepository _repository;

  const ImplDealDamageToPieceUsecase({
    required ProtocolPieceRepository boardRepository,
  }) : _repository = boardRepository;

  @override
  Either<MatchFailure, ReturnDealDamageToPieceUsecase> call(
    DealDamageToPieceParam param,
  ) {
    final destinyPieceResponse = _repository.updatePieceEntityWithId(
      param.uniquePieceEntityId,
      (currentEntity) {
        return currentEntity.copyWith(
          pieceState: currentEntity.pieceState.copyWith(
            piece: currentEntity.pieceState.piece.copyWith(
              life: currentEntity.pieceState.piece.life - param.damage,
            ),
          ),
        );
      },
    );

    if (destinyPieceResponse.isLeft()) return destinyPieceResponse.asLeft();
    final pieceAfterUpdate = destinyPieceResponse.asRightResult.pieceState;
    final wasDamageFatal = pieceAfterUpdate.piece.pieceIsAlive == false;

    return right(
      ReturnDealDamageToPieceUsecase(didDamageKillTargetPiece: wasDamageFatal),
    );
  }
}
