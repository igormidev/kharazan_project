import 'package:micro_kharazan/battlemaker/core/constants.dart';
import 'package:micro_kharazan/battlemaker/domain/builders/move_builder.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/move_animation_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/type_of_move_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/change_piece_position_usecase/param_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/change_piece_position_usecase/protocol_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/deal_damage_to_piece_usecase/param_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/deal_damage_to_piece_usecase/protocol_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/execute_typed_move_usecase/param_execute_typed_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/execute_typed_move_usecase/protocol_execute_typed_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/remove_piece_in_coordenate_usecase/param_remove_piece_in_coordenate_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/remove_piece_in_coordenate_usecase/protocol_remove_piece_in_coordenate_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/remove_all_piece_animations_usecase/protocol_remove_all_piece_animations_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_change_position_animation_state_usecase/param_update_piece_to_change_position_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_change_position_animation_state_usecase/protocol_update_piece_to_change_position_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_fatal_attack_animation_state_usecase/param_update_piece_to_making_fatal_attack_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_fatal_attack_animation_state_usecase/protocol_update_piece_to_making_fatal_attack_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_non_fatal_attack_animation_state_usecase/param_update_piece_to_making_non_fatal_attack_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_non_fatal_attack_animation_state_usecase/protocol_update_piece_to_making_non_fatal_attack_animation_state_usecase.dart';

import 'return_execute_typed_move_usecase.dart';

class ImplExecuteTypedMoveUsecase implements ProtocolExecuteTypedMoveUsecase {
  // ==> Field manipulation
  final ProtocolChangePiecePositionUsecase _changePiecePositionUsecase;
  final ProtocolDealDamageToPieceUsecase _dealDamageToPieceUsecase;

  // ==> Pieces animations setters usecases
  final ProtocolUpdatePieceToChangePositionAnimationStateUsecase
      _updatePieceToChangePositionAnimationStateUsecase;
  final ProtocolUpdatePieceToMakingNonFatalAttackAnimationStateUsecase
      _updatePieceToMakingNonFatalAttackAnimationStateUsecase;
  final ProtocolUpdatePieceToMakingFatalAttackAnimationStateUsecase
      _updatePieceToMakingFatalAttackAnimationStateUsecase;
  final ProtocolRemovePieceInCoordenateUsecase _removePieceInCoordenateUsecase;
  final ProtocolRemoveAllPieceAnimationsUsecase
      _removeAllPieceAnimationsUsecase;

  final MoveBuilder _moveBuilder;

  ImplExecuteTypedMoveUsecase({
    required ProtocolChangePiecePositionUsecase changePiecePositionUsecase,
    required ProtocolDealDamageToPieceUsecase dealDamageToPieceUsecase,
    required ProtocolUpdatePieceToChangePositionAnimationStateUsecase
        updatePieceToChangePositionAnimationStateUsecase,
    required ProtocolUpdatePieceToMakingNonFatalAttackAnimationStateUsecase
        updatePieceToMakingNonFatalAttackAnimationStateUsecase,
    required ProtocolUpdatePieceToMakingFatalAttackAnimationStateUsecase
        updatePieceToMakingFatalAttackAnimationStateUsecase,
    required ProtocolRemovePieceInCoordenateUsecase
        removePieceInCoordenateUsecase,
    required ProtocolRemoveAllPieceAnimationsUsecase
        removeAllPieceAnimationsUsecase,
  })  : _changePiecePositionUsecase = changePiecePositionUsecase,
        _dealDamageToPieceUsecase = dealDamageToPieceUsecase,
        _updatePieceToChangePositionAnimationStateUsecase =
            updatePieceToChangePositionAnimationStateUsecase,
        _updatePieceToMakingNonFatalAttackAnimationStateUsecase =
            updatePieceToMakingNonFatalAttackAnimationStateUsecase,
        _updatePieceToMakingFatalAttackAnimationStateUsecase =
            updatePieceToMakingFatalAttackAnimationStateUsecase,
        _removePieceInCoordenateUsecase = removePieceInCoordenateUsecase,
        _removeAllPieceAnimationsUsecase = removeAllPieceAnimationsUsecase,
        _moveBuilder = MoveBuilder(
          changePiecePositionUsecase: changePiecePositionUsecase,
          dealDamageToPieceUsecase: dealDamageToPieceUsecase,
          updatePieceToChangePositionAnimationStateUsecase:
              updatePieceToChangePositionAnimationStateUsecase,
          updatePieceToMakingNonFatalAttackAnimationStateUsecase:
              updatePieceToMakingNonFatalAttackAnimationStateUsecase,
          updatePieceToMakingFatalAttackAnimationStateUsecase:
              updatePieceToMakingFatalAttackAnimationStateUsecase,
          removePieceInCoordenateUsecase: removePieceInCoordenateUsecase,
          removeAllPieceAnimationsUsecase: removeAllPieceAnimationsUsecase,
        );

  @override
  Either<MatchFailure, ReturnExecuteTypedMoveUsecase> call(
    ParamExecuteTypedMoveUsecase param,
  ) {
    final TypeOfMoveEntity typeOfMove = param.typeOfMoveEntity;

    return typeOfMove.when<Either<MatchFailure, ReturnExecuteTypedMoveUsecase>>(
      // ┌─────────────────────────────────────────────────────────
      // │ The animation of a piece changing his current position
      // └─────────────────────────────────────────────────────────
      pieceChangingPosition: (
        CoordenatesInMove coordenatesInMove,
        BoardPieceEntity boardEntity,
        List<BoardFieldEntity> otherBoardEntities,
      ) {
        final origin = coordenatesInMove.origin;
        final destiny = coordenatesInMove.destiny;
        return _moveBuilder
            .removePieceAnimations()
            .changePiecePositionById(origin, destiny)
            .updatePieceEntityWithChangePositionAnimation(
              uniqueBoardId: boardEntity.uniqueBoardId,
              origin: origin,
              destiny: destiny,
            )
            .execute();
      },

      // ┌─────────────────────────────────────────────────────────
      // │ The animation of one piece attackig other
      // └─────────────────────────────────────────────────────────
      pieceAttackingOther: (
        CoordenatesInMove coordenatesInMove,
        BoardPieceEntity pieceEntityInOrigin,
        BoardPieceEntity pieceEntityInDestiny,
        List<BoardFieldEntity> otherBoardEntities,
      ) {
        final pieceState = pieceEntityInOrigin.pieceState;
        final damage = pieceState.piece.damage;
        final id = pieceEntityInOrigin.pieceOwnerId;
        final origin = coordenatesInMove.origin;
        final destiny = coordenatesInMove.destiny;

        return _moveBuilder
            .removePieceAnimations()

            // ==> Init deal damage case
            .dealDamageToPieceWithId(id, damage)

            // Set if damage dosent kill target piece
            .setIfDamageDosentKillTargetPiece()
            .putNonFatalPieceAttackAnimationWithId(
              uniqueBoardId: id,
              origin: origin,
              destiny: destiny,
            )

            // Set if damage does kill target piece
            .setIfDamageKillTargetPiece()
            .changePiecePositionById(origin, destiny)
            .putDestructionAnimationInPieceWithId(id)
            .putFatalPieceAttackAnimationWithId(
              uniqueBoardId: id,
              origin: origin,
              destiny: destiny,
            )
            .exitDealDamageCases()
            // ==> Exit deal damage case

            .addDamageIndicatorInCoordenate(damage, destiny)
            .execute();
      },
    );
  }

  // ┌─────────────────────────────────────────────────────────
  // │ The animation of a piece changing his current position
  // └─────────────────────────────────────────────────────────
  Either<MatchFailure, ReturnExecuteTypedMoveUsecase> onPieceChangingPosition(
    CoordenatesInMove coordenatesInMove,
    BoardPieceEntity uniqueId,
    List<BoardFieldEntity> otherBoardEntities,
  ) {
    // ┌─────────────────────────────────────────────────────────
    // │ Remove all current animations in pieces, replacing it
    // │ to the default piece state without animation
    // └─────────────────────────────────────────────────────────
    final removePieceAnimationResponse = _removeAllPieceAnimationsUsecase();
    if (removePieceAnimationResponse.isLeft()) {
      return removePieceAnimationResponse.asLeft();
    }

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
        ParamUpdatePieceToChangePositionAnimationStateUsecase(
      uniqueBoardId: uniqueId.uniqueBoardId,
      originCoordenate: coordenatesInMove.origin,
      destinyCoordenate: coordenatesInMove.destiny,
    );
    final animationResponse =
        _updatePieceToChangePositionAnimationStateUsecase(animationParam);
    if (animationResponse.isLeft()) return animationResponse.asLeft();

    return right(const ReturnExecuteTypedMoveUsecase(animationsInMove: []));
  }

  // ┌─────────────────────────────────────────────────────────
  // │ The animation of one piece attackig other
  // └─────────────────────────────────────────────────────────
  Either<MatchFailure, ReturnExecuteTypedMoveUsecase> onPieceAttackingOther(
    CoordenatesInMove coordenatesInMove,
    BoardPieceEntity pieceEntityInOrigin,
    BoardPieceEntity pieceEntityInDestiny,
    List<BoardFieldEntity> otherBoardEntities,
  ) {
    // All animations in move will be added here
    final List<MoveAnimationEntity> animationInMove = [];

    // ┌─────────────────────────────────────────────────────────
    // │ Remove all current animations in pieces, replacing it
    // │ to the default piece state without animation
    // └─────────────────────────────────────────────────────────
    final removePieceAnimationResponse = _removeAllPieceAnimationsUsecase();
    if (removePieceAnimationResponse.isLeft()) {
      return removePieceAnimationResponse.asLeft();
    }

    // ┌─────────────────────────────────────────────────────────
    // │ Deal the damage to the target piece, reducing its life
    // └─────────────────────────────────────────────────────────
    final param = DealDamageToPieceParam(
      uniquePieceEntityId: pieceEntityInDestiny.uniqueBoardId,
      damage: pieceEntityInOrigin.pieceState.piece.damage,
    );
    final dealDamageResponse = _dealDamageToPieceUsecase(param);
    if (dealDamageResponse.isLeft()) return dealDamageResponse.asLeft();
    final didDamageKillTargetPiece =
        dealDamageResponse.asRightResult.didDamageKillTargetPiece;

    if (didDamageKillTargetPiece) {
      // ┌─────────────────────────────────────────────────────────
      // │ Remove the piece in the board if the damage is fatal
      // └─────────────────────────────────────────────────────────
      final removePieceParam = ParamRemovePieceInCoordenateUsecase(
          coordenate: coordenatesInMove.destiny);
      final removePieceInCoordenateResponse =
          _removePieceInCoordenateUsecase(removePieceParam);
      if (removePieceInCoordenateResponse.isLeft()) {
        return removePieceInCoordenateResponse.asLeft();
      }

      // ┌─────────────────────────────────────────────────────────
      // │ Switch the origin piece position to the
      // │ killed destiny piece position
      // └─────────────────────────────────────────────────────────
      final changePiecePositionParam = ChangePiecePositionParam(
        originCoordenate: coordenatesInMove.origin,
        destinyCoordenate: coordenatesInMove.destiny,
      );
      final changeResponse =
          _changePiecePositionUsecase(changePiecePositionParam);
      if (changeResponse.isLeft()) return changeResponse.asLeft();

      // ┌─────────────────────────────────────────────────────────
      // │ Update the state of the piece to a fatal attack animation
      // └─────────────────────────────────────────────────────────
      final pieceAttackParam =
          ParamUpdatePieceToMakingFatalAttackAnimationStateUsecase(
        uniqueBoardId: pieceEntityInOrigin.uniqueBoardId,
        originCoordenate: coordenatesInMove.origin,
        destinyCoordenate: coordenatesInMove.destiny,
      );
      final pieceAttackResponse =
          _updatePieceToMakingFatalAttackAnimationStateUsecase(
              pieceAttackParam);
      if (pieceAttackResponse.isLeft()) return pieceAttackResponse.asLeft();
    } else {
      // ┌─────────────────────────────────────────────────────────
      // │ Update the state of the piece to a NOT fatal attack animation
      // └─────────────────────────────────────────────────────────
      final pieceAttackParam =
          ParamUpdatePieceToMakingNonFatalAttackAnimationStateUsecase(
        uniqueBoardId: pieceEntityInOrigin.uniqueBoardId,
        originCoordenate: coordenatesInMove.origin,
        destinyCoordenate: coordenatesInMove.destiny,
      );
      final pieceAttackResponse =
          _updatePieceToMakingNonFatalAttackAnimationStateUsecase(
              pieceAttackParam);
      if (pieceAttackResponse.isLeft()) return pieceAttackResponse.asLeft();
    }
    final damage = pieceEntityInOrigin.pieceState.piece.damage;
    animationInMove.add(MoveAnimationEntity.damageIndicator(
      damageTaken: damage,
      duration: Constants.changeAttackAnimationTime,
      coordenate: pieceEntityInDestiny.coordenate,
    ));

    return right(ReturnExecuteTypedMoveUsecase(
      animationsInMove: animationInMove,
    ));
  }
}
