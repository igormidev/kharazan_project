import 'package:equatable/equatable.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';

class BattleCurrentStateModel extends Equatable {
  final String currentUserId;
  final List<BoardEntity> boardState;
  final List<UserStateEntity> usersInTheMatchState;

  const BattleCurrentStateModel({
    required this.currentUserId,
    required this.boardState,
    required this.usersInTheMatchState,
  });

  @override
  List<Object> get props => [currentUserId, boardState, usersInTheMatchState];
}
