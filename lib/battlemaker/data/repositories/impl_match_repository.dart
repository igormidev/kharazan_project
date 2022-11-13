import 'package:micro_kharazan/battlemaker/data/source/protocol_match_source.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_match_state_repository.dart';

class ImplMatchRepository implements ProtocolMatchStateRepository {
  final ProtocolMatchSource _matchSource;

  const ImplMatchRepository({required ProtocolMatchSource matchSource})
      : _matchSource = matchSource;

  @override
  Either<MatchFailure, List<UserStateEntity>> getStateOfUsersOfMatch() {
    return _matchSource.getStateOfUsers();
  }

  @override
  Either<MatchFailure, UserStateEntity> getUserState(String userId) {
    return _matchSource.getUserState(userId);
  }
}
