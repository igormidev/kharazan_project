import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/constants.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/states/piece_state.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_piece_repository.dart';
import 'protocol_update_piece_to_making_non_fatal_attack_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_non_fatal_attack_animation_state_usecase/param_update_piece_to_making_non_fatal_attack_animation_state_usecase.dart';

class ImplUpdatePieceToMakingNonFatalAttackAnimationStateUsecase
    implements ProtocolUpdatePieceToMakingNonFatalAttackAnimationStateUsecase {
  final ProtocolPieceRepository _pieceRepository;
  const ImplUpdatePieceToMakingNonFatalAttackAnimationStateUsecase(
      {required ProtocolPieceRepository pieceRepository})
      : _pieceRepository = pieceRepository;

  @override
  Either<MatchFailure, VoidSucess> call(
    ParamUpdatePieceToMakingNonFatalAttackAnimationStateUsecase param,
  ) {
    return _pieceRepository
        .updatePieceEntityWithId(
          boardId: param.uniquePieceEntityId,
          boardPieceEntity: (BoardPieceEntity currentPiece) {
            return currentPiece.copyWith(
              pieceState: PieceState.pieceMakingNonFatalAttack(
                piece: currentPiece.pieceState.piece,
                animationTime: Constants.changeAttackAnimationTime,
                originCoordenate: param.originCoordenate,
                destinyCoordenate: param.destinyCoordenate,
              ),
            );
          },
        )
        .castRight((_) => VoidSucess());
  }
}
