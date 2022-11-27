import 'package:flutter_test/flutter_test.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_match_state_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/impl_get_match_states_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/protocol_get_match_states_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/failure_mocks.dart';
import '../../../../helpers/mock_piece.dart';

class MockProtocolBoardRepository extends Mock
    implements ProtocolBoardRepository {}

class MockProtocolMatchStateRepository extends Mock
    implements ProtocolMatchStateRepository {}

void main() {
  late ProtocolBoardRepository boardRepository;
  late ProtocolMatchStateRepository matchRepository;
  late ProtocolGetMatchStatesUsecase getMatchStatesUsecase;

  setUp(() {
    boardRepository = MockProtocolBoardRepository();
    matchRepository = MockProtocolMatchStateRepository();
    getMatchStatesUsecase = ImplGetMatchStatesUsecase(
      boardRepository: boardRepository,
      matchRepository: matchRepository,
    );
  });

  test('Should obtain the match states as expected', () async {
    when(() => boardRepository.obtainEntitiesInTheBoard())
        .thenReturn(right(<BoardEntity>[fakeBoardEntity]));
    when(() => matchRepository.getStateOfUsersOfMatch())
        .thenReturn(right(<UserStateEntity>[fakeUserState]));

    final response = getMatchStatesUsecase();
    const expectedReturnModel = fakeGetMatchStates;
    expect(response.isRight(), isTrue);
    expect(response.asRightResult, expectedReturnModel);
  });

  test('Should use the repository that obtains the board entities', () async {
    when(() => boardRepository.obtainEntitiesInTheBoard())
        .thenReturn(right(<BoardEntity>[fakeBoardEntity]));
    when(() => matchRepository.getStateOfUsersOfMatch())
        .thenReturn(right(<UserStateEntity>[fakeUserState]));

    getMatchStatesUsecase();
    verify(() => boardRepository.obtainEntitiesInTheBoard()).called(1);
  });

  test('Should use the repository that obtains the state of users', () async {
    when(() => boardRepository.obtainEntitiesInTheBoard())
        .thenReturn(right(<BoardEntity>[fakeBoardEntity]));
    when(() => matchRepository.getStateOfUsersOfMatch())
        .thenReturn(right(<UserStateEntity>[fakeUserState]));

    getMatchStatesUsecase();
    verify(() => matchRepository.getStateOfUsersOfMatch()).called(1);
  });

  group('Should manege error as expected', () {
    test(
        'Should return the error of the repository '
        'when obtaining the entities', () async {
      when(() => boardRepository.obtainEntitiesInTheBoard())
          .thenReturn(left(MockMatchFailure()));
      when(() => matchRepository.getStateOfUsersOfMatch())
          .thenReturn(right(<UserStateEntity>[]));

      final response = getMatchStatesUsecase();
      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<MockMatchFailure>());
      verifyNever(() => matchRepository.getStateOfUsersOfMatch());
    });

    test(
        'Should return the error of the repository '
        'when obtaining the users state of the match', () async {
      when(() => boardRepository.obtainEntitiesInTheBoard())
          .thenReturn(right(<BoardEntity>[]));
      when(() => matchRepository.getStateOfUsersOfMatch())
          .thenReturn(left(MockMatchFailure()));

      final response = getMatchStatesUsecase();
      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<MockMatchFailure>());
      verify(() => boardRepository.obtainEntitiesInTheBoard()).called(1);
    });
  });
}
