import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/constants.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/move_animation_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/execute_typed_move_usecase/return_execute_typed_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/change_piece_position_usecase/param_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/change_piece_position_usecase/protocol_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/deal_damage_to_piece_usecase/param_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/deal_damage_to_piece_usecase/protocol_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/deal_damage_to_piece_usecase/return_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/remove_piece_in_coordenate_usecase/param_remove_piece_in_coordenate_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/remove_piece_in_coordenate_usecase/protocol_remove_piece_in_coordenate_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/remove_all_piece_animations_usecase/protocol_remove_all_piece_animations_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_change_position_animation_state_usecase/param_update_piece_to_change_position_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_change_position_animation_state_usecase/protocol_update_piece_to_change_position_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_fatal_attack_animation_state_usecase/param_update_piece_to_making_fatal_attack_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_fatal_attack_animation_state_usecase/protocol_update_piece_to_making_fatal_attack_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_non_fatal_attack_animation_state_usecase/param_update_piece_to_making_non_fatal_attack_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_non_fatal_attack_animation_state_usecase/protocol_update_piece_to_making_non_fatal_attack_animation_state_usecase.dart';

part 'pipe_extensions.dart';
part 'pipe_functions.dart';

class MovePipeLineBuilder {
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

  MovePipeLineBuilder({
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
        _removeAllPieceAnimationsUsecase = removeAllPieceAnimationsUsecase;

  final List<MoveAnimationEntity> animationInMove = <MoveAnimationEntity>[];

  PipeResult initMovePipeLine() {
    return right(this);
  }
}
