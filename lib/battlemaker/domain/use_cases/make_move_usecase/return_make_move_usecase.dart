import 'package:equatable/equatable.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/move_animation_entity.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';

class ReturnMakeMoveUsecase extends Equatable {
  final String playerThatMakedMoveId;
  final List<BoardFieldEntity> boardStates;
  final List<UserStateEntity> usersInTheMatchState;
  final List<MoveAnimationEntity> animationsInMove;

  const ReturnMakeMoveUsecase({
    required this.playerThatMakedMoveId,
    required this.boardStates,
    required this.usersInTheMatchState,
    required this.animationsInMove,
  });

  @override
  List<Object> get props => [
        playerThatMakedMoveId,
        boardStates,
        usersInTheMatchState,
        animationsInMove,
      ];
}
