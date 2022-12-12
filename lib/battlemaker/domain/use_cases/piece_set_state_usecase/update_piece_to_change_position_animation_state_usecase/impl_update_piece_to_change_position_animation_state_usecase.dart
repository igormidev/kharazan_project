import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/constants.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/states/piece_state.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_piece_repository.dart';
import 'param_update_piece_to_change_position_animation_state_usecase.dart';
import 'protocol_update_piece_to_change_position_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

class ImplUpdatePieceToChangePositionAnimationStateUsecase
    implements ProtocolUpdatePieceToChangePositionAnimationStateUsecase {
  final ProtocolPieceRepository _pieceRepository;

  const ImplUpdatePieceToChangePositionAnimationStateUsecase(
      {required ProtocolPieceRepository pieceRepository})
      : _pieceRepository = pieceRepository;

  @override
  Either<MatchFailure, VoidSucess> call(
    ParamUpdatePieceToChangePositionAnimationStateUsecase param,
  ) {
    return _pieceRepository.updatePieceEntityWithId(
      param.uniqueBoardId,
      (BoardPieceEntity currentPiece) {
        return currentPiece.copyWith(
          pieceState: PieceState.pieceChangingPosition(
            piece: currentPiece.pieceState.piece,
            animationTime: Constants.changePositionAnimationTime,
            originCoordenate: param.originCoordenate,
            destinyCoordenate: param.destinyCoordenate,
          ),
        );
      },
    ).castRight((_) => VoidSucess());
  }
}
