import 'package:flutter_test/flutter_test.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/data/source/protocol_match_source.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/external/source/impl_match_source.dart';

void main() {
  late ProtocolMatchSource source;

  const user1 = UserStateEntity(playerId: 'player1', currentMana: 13);
  const user2 = UserStateEntity(playerId: 'player2', currentMana: 20);
  setUp(() {
    source = const ImplMatchSource(usersInTheGame: [user1, user2]);
  });

  group('Should get user by id as expected', () {
    test('Needs to call match source when getting users', () {
      final response = source.getUserState('player1');
      expect(response.asRightResult, user1);
    });

    test('Needs to return a error when dosent exists user with id parameter',
        () {
      final response = source.getUserState('invalidId');
      expect(response.asLeftResult, isA<NoUserStateWithThatID>());
    });
  });

  group('Should get users in the match as expected', () {
    test('Needs to call match source when getting users', () {
      final response = source.getStateOfUsers();
      expect(response.asRightResult, [user1, user2]);
    });
  });
}
