import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/data/dto/piece_dto.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'param_deal_damage_to_piece_usecase.dart';
import 'protocol_deal_damage_to_piece_usecase.dart';

class ImplDealDamageToPieceUsecase implements ProtocolDealDamageToPieceUsecase {
  final ProtocolBoardRepository _repository;

  const ImplDealDamageToPieceUsecase({
    required ProtocolBoardRepository boardRepository,
  }) : _repository = boardRepository;

  @override
  Either<MatchFailure, bool> call(DealDamageToPieceParam param) {
    final coordenate = param.coordenates;
    final pieceResponse = _repository.updatePieceInCoordenate(
      coordenate,
      (PieceEntity piece) => returnPieceWithDamageTaken(piece, param.damage),
    );
    if (pieceResponse.isLeft()) return pieceResponse.asLeft();

    final pieceThatWillReciveDamage = pieceResponse.asRightResult;
    final wasDamageFatal = pieceThatWillReciveDamage.pieceIsAlive == false;
    if (wasDamageFatal) {
      return right(true);
    } else {
      return right(false);
    }
  }

  @visibleForTesting
  PieceEntity returnPieceWithDamageTaken(PieceEntity piece, int damage) {
    final lifeAfterAttack = piece.life - damage;
    return piece.copyWith(life: lifeAfterAttack);
  }
}
