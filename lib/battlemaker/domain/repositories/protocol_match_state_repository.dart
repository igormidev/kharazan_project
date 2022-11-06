import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

abstract class ProtocolMatchStateRepository {
  Either<MatchFailure, UserStateEntity> getUserState(String userId);

  Either<MatchFailure, List<UserStateEntity>> getStateOfUsersOfMatch();
}
