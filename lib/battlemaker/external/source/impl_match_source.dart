import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/data/source/protocol_match_source.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

class ImplMatchSource extends ProtocolMatchSource {
  final List<UserStateEntity> _usersInTheGame;

  const ImplMatchSource({required List<UserStateEntity> usersInTheGame})
      : _usersInTheGame = usersInTheGame;

  @override
  Either<MatchFailure, List<UserStateEntity>> getStateOfUsers() {
    return right(_usersInTheGame);
  }

  @override
  Either<MatchFailure, UserStateEntity> getUserState(String userId) {
    final index = _usersInTheGame.entityIndexOf(userId);
    if (index == -1) return left(const MatchFailure.noUserStateWithThatID());
    return right(_usersInTheGame[index]);
  }
}

extension _UserListStateExtension on List<UserStateEntity> {
  int entityIndexOf(String userId) =>
      indexWhere((user) => user.playerId == userId);
}
