import 'package:equatable/equatable.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';

class ReturnGetMatchStatesUsecase extends Equatable {
  final List<BoardFieldEntity> boardState;
  final List<UserStateEntity> usersInTheMatchState;

  const ReturnGetMatchStatesUsecase({
    required this.boardState,
    required this.usersInTheMatchState,
  });

  @override
  List<Object> get props => [boardState, usersInTheMatchState];
}
