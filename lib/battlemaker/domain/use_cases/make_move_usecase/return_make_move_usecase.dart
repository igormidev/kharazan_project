import 'package:equatable/equatable.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';

class ReturnMakeMoveUsecase extends Equatable {
  final String playerThatMakedMoveId;
  final CoordenatesInMove moveMaked;
  final List<BoardEntity> boardState;
  final List<UserStateEntity> usersInTheMatchState;

  const ReturnMakeMoveUsecase({
    required this.moveMaked,
    required this.playerThatMakedMoveId,
    required this.boardState,
    required this.usersInTheMatchState,
  });

  @override
  List<Object> get props =>
      [moveMaked, playerThatMakedMoveId, boardState, usersInTheMatchState];
}
