import 'package:micro_kharazan/battlemaker/core/constants.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/states/piece_state.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_piece_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_fatal_attack_animation_state_usecase/param_update_piece_to_making_fatal_attack_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_fatal_attack_animation_state_usecase/protocol_update_piece_to_making_fatal_attack_animation_state_usecase.dart';

class ImplUpdatePieceToMakingFatalAttackAnimationStateUsecase
    implements ProtocolUpdatePieceToMakingFatalAttackAnimationStateUsecase {
  final ProtocolPieceRepository _pieceRepository;
  const ImplUpdatePieceToMakingFatalAttackAnimationStateUsecase(
      {required ProtocolPieceRepository pieceRepository})
      : _pieceRepository = pieceRepository;

  @override
  Either<MatchFailure, VoidSucess> call(
    ParamUpdatePieceToMakingFatalAttackAnimationStateUsecase param,
  ) {
    return _pieceRepository.updatePieceEntityWithId(
      param.uniqueBoardId,
      (BoardPieceEntity currentPiece) {
        return currentPiece.copyWith(
          pieceState: PieceState.pieceMakingFatalAttack(
            piece: currentPiece.pieceState.piece,
            animationTime: Constants.changeAttackAnimationTime,
            originCoordenate: param.originCoordenate,
            destinyCoordenate: param.destinyCoordenate,
          ),
        );
      },
    ).castRight((_) => VoidSucess());
  }
}
