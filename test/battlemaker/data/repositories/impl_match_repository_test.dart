import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/data/repositories/impl_match_repository.dart';
import 'package:micro_kharazan/battlemaker/data/source/protocol_match_source.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_match_state_repository.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/failure_mocks.dart';
import '../../../helpers/mock_piece.dart';

class MockProtocolMatchSource extends Mock implements ProtocolMatchSource {}

void main() {
  late ProtocolMatchSource source;
  late ProtocolMatchStateRepository repository;

  setUp(() {
    source = MockProtocolMatchSource();
    repository = ImplMatchRepository(matchSource: source);
  });

  group('Should get user by id as expected', () {
    test('Needs to call match source when getting users', () {
      when(() => source.getUserState('test')).thenReturn(right(fakeUserState));
      final response = repository.getUserState('test');
      expect(response.asRightResult, fakeUserState);
    });

    test('Needs to return a error when the source returns a error', () {
      when(() => source.getUserState('test'))
          .thenReturn(left(MockMatchFailure()));

      final response = repository.getUserState('test');
      expect(response.asLeftResult, isA<MockMatchFailure>());
    });
  });

  group('Should get users in the match as expected', () {
    test('Needs to call match source when getting user by id', () {
      when(() => source.getStateOfUsers()).thenReturn(right([fakeUserState]));
      final response = repository.getStateOfUsersOfMatch();
      expect(response.asRightResult, [fakeUserState]);
    });

    test('Needs to return a error when the source returns a error', () {
      when(() => source.getStateOfUsers()).thenReturn(left(MockMatchFailure()));

      final response = repository.getStateOfUsersOfMatch();
      expect(response.asLeftResult, isA<MockMatchFailure>());
    });
  });
}
