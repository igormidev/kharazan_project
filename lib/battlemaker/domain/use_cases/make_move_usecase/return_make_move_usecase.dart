import 'package:equatable/equatable.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';

class ReturnMakeMoveUsecase extends Equatable {
  final String playerThatMakedMoveId;
  final CoordenatesInMove moveMaked;
  final List<BoardFieldEntity> boardStates;
  final List<UserStateEntity> usersInTheMatchState;

  const ReturnMakeMoveUsecase({
    required this.moveMaked,
    required this.playerThatMakedMoveId,
    required this.boardStates,
    required this.usersInTheMatchState,
  });

  @override
  List<Object> get props =>
      [moveMaked, playerThatMakedMoveId, boardStates, usersInTheMatchState];
}
