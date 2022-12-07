import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/change_piece_position_usecase/param_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/change_piece_position_usecase/protocol_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/deal_damage_to_piece_usecase/param_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/deal_damage_to_piece_usecase/protocol_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/execute_typed_move_usecase/param_execute_typed_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/execute_typed_move_usecase/protocol_execute_typed_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/remove_piece_in_coordenate_usecase/param_remove_piece_in_coordenate_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/remove_piece_in_coordenate_usecase/protocol_remove_piece_in_coordenate_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_change_position_animation_state_usecase/param_update_piece_to_change_position_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_change_position_animation_state_usecase/protocol_update_piece_to_change_position_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_attack_animation_state_usecase/protocol_update_piece_to_making_attack_animation_state_usecase.dart';

class ImplExecuteTypedMoveUsecase implements ProtocolExecuteTypedMoveUsecase {
  // ==> Field manipulation
  final ProtocolChangePiecePositionUsecase _changePiecePositionUsecase;
  final ProtocolDealDamageToPieceUsecase _dealDamageToPieceUsecase;

  // ==> Pieces animations setters usecases
  final ProtocolUpdatePieceToChangePositionAnimationStateUsecase
      _updatePieceToChangePositionAnimationStateUsecase;
  final ProtocolUpdatePieceToMakingAttackAnimationStateUsecase
      _updatePieceToMakingAttackAnimationStateUsecase;
  final ProtocolRemovePieceInCoordenateUsecase _removePieceInCoordenateUsecase;

  const ImplExecuteTypedMoveUsecase({
    required ProtocolChangePiecePositionUsecase changePiecePositionUsecase,
    required ProtocolDealDamageToPieceUsecase dealDamageToPieceUsecase,
    required ProtocolUpdatePieceToChangePositionAnimationStateUsecase
        updatePieceToChangePositionAnimationStateUsecase,
    required ProtocolUpdatePieceToMakingAttackAnimationStateUsecase
        updatePieceToMakingAttackAnimationStateUsecase,
    required ProtocolRemovePieceInCoordenateUsecase
        removePieceInCoordenateUsecase,
  })  : _changePiecePositionUsecase = changePiecePositionUsecase,
        _dealDamageToPieceUsecase = dealDamageToPieceUsecase,
        _updatePieceToChangePositionAnimationStateUsecase =
            updatePieceToChangePositionAnimationStateUsecase,
        _updatePieceToMakingAttackAnimationStateUsecase =
            updatePieceToMakingAttackAnimationStateUsecase,
        _removePieceInCoordenateUsecase = removePieceInCoordenateUsecase;

  @override
  Either<MatchFailure, VoidSucess> call(ParamExecuteTypedMoveUsecase param) {
    final typeOfMove = param.typeOfMoveEntity;

    return typeOfMove.when<Either<MatchFailure, VoidSucess>>(
      pieceChangingPosition: onPieceChangingPosition,
      pieceAttackingOther: onPieceAttackingOther,
    );
  }

  // ┌─────────────────────────────────────────────────────────
  // │ The animation of a piece changing his current position
  // └─────────────────────────────────────────────────────────
  Either<MatchFailure, VoidSucess> onPieceChangingPosition(
    CoordenatesInMove coordenatesInMove,
    PieceEntity pieceInOrigin,
    PieceEntity? pieceInDestiny,
    List<BoardFieldEntity> otherBoardEntities,
  ) {
    // ┌─────────────────────────────────────────────────────────
    // │ First, lets change piece position in the field
    // └─────────────────────────────────────────────────────────
    final changePiecePositionParam = ChangePiecePositionParam(
      originCoordenate: coordenatesInMove.origin,
      destinyCoordenate: coordenatesInMove.destiny,
    );
    final changeResponse =
        _changePiecePositionUsecase(changePiecePositionParam);
    if (changeResponse.isLeft()) return changeResponse.asLeft();

    // ┌─────────────────────────────────────────────────────────
    // │ Now, let's update the piece in the field to the state of
    // │ change position animation
    // └─────────────────────────────────────────────────────────
    final animationParam =
        ParamUpdatePieceToChangePositionAnimationStateUsecase();
    final animationResponse =
        _updatePieceToChangePositionAnimationStateUsecase(animationParam);
    if (animationResponse.isLeft()) return animationResponse.asLeft();

    return right(VoidSucess());
  }

  // ┌─────────────────────────────────────────────────────────
  // │ The animation of one piece attackig other
  // └─────────────────────────────────────────────────────────
  Either<MatchFailure, VoidSucess> onPieceAttackingOther(
    CoordenatesInMove coordenatesInMove,
    PieceEntity pieceInOrigin,
    PieceEntity? pieceInDestiny,
    List<BoardFieldEntity> otherBoardEntities,
  ) {
    final param = DealDamageToPieceParam(
      targetPieceCoordenates: coordenatesInMove.destiny,
      damage: pieceInOrigin.damage,
    );
    final dealDamageResponse = _dealDamageToPieceUsecase(param);
    if (dealDamageResponse.isLeft()) return dealDamageResponse.asLeft();

    final didDamageKillTargetPiece =
        dealDamageResponse.asRightResult.didDamageKillTargetPiece;

    if (didDamageKillTargetPiece) {
      final removePieceParam = ParamRemovePieceInCoordenateUsecase(
          coordenate: coordenatesInMove.destiny);
      final removePieceInCoordenateResponse =
          _removePieceInCoordenateUsecase(removePieceParam);
      if (removePieceInCoordenateResponse.isLeft()) {
        return removePieceInCoordenateResponse.asLeft();
      }

      // TODO: implement fatal attack animation
    } else {
      // TODO: implement non fatal attack animation
      // _updatePieceToMakingAttackAnimationStateUsecase();
    }

    return right(VoidSucess());
  }
}
