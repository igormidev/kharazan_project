import 'package:flutter_test/flutter_test.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/protocol_get_match_states_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/return_get_match_states_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/param_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/return_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/presentation/match_event.dart';
import 'package:micro_kharazan/battlemaker/presentation/models/battle_current_model.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:micro_kharazan/battlemaker/presentation/battle_maker_controller.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/protocol_make_move_usecase.dart';

import '../../helpers/failure_mocks.dart';
import '../../helpers/mock_piece.dart';

class MockMakeMoveUsecase extends Mock implements ProtocolMakeMoveUsecase {}

const fakeResult = ReturnMakeMoveUsecase(
  moveMaked: CoordenatesInMove(
    origin: Coordenate(0, 0),
    destiny: Coordenate(0, 0),
  ),
  playerThatMakedMoveId: '123id',
  boardState: [],
  usersInTheMatchState: [],
);

class MockGetMatchStatesUsecase extends Mock
    implements ProtocolGetMatchStatesUsecase {}

void main() {
  late BattleMakerController controller;
  late MockMakeMoveUsecase makeMoveUsecase;
  late MockGetMatchStatesUsecase getMatchStatesUsecase;
  const param = MakeMoveParam(userId: 'testID', move: 'b5a3');

  setUp(() {
    makeMoveUsecase = MockMakeMoveUsecase();
    getMatchStatesUsecase = MockGetMatchStatesUsecase();
    controller = BattleMakerController.createMatch(
      firstUserToMoveId: 'testID',
      makeMoveUsecase: makeMoveUsecase,
      protocolGetMatchStatesUsecase: getMatchStatesUsecase,
    );
  });

  group('Should manege a make move as expected', () {
    test('Should add event to the event stream after making the move',
        () async {
      when(() => makeMoveUsecase(param)).thenReturn(right(fakeResult));
      final response = await controller.makeMove('testID', 'b5a3');

      expect(response.isRight(), isTrue);
      expect(response.asRightResult, isA<VoidSucess>());
      expect(
        await controller.outEvents.first,
        MatchEvent.moveMaked(
          coordenatesInMove: fakeResult.moveMaked,
          playerUserTurnId: fakeResult.playerThatMakedMoveId,
          boardState: fakeResult.boardState,
          usersInTheMatchState: fakeResult.usersInTheMatchState,
        ),
      );
    });

    test(
        'Should set the current user id in the class '
        'only if the it is a sucessfull movement', () async {
      // The initial value setted in the controller
      expect(controller.currentUserTurnId, 'testID');
      const param = MakeMoveParam(userId: '123id', move: 'b5a3');

      when(() => makeMoveUsecase(param)).thenReturn(left(MockMatchFailure()));
      final errorResponse = await controller.makeMove('123id', 'b5a3');
      // Returned a error, so the id can't change
      expect(errorResponse.isLeft(), isTrue);
      expect(controller.currentUserTurnId, 'testID');

      when(() => makeMoveUsecase(param)).thenReturn(right(fakeResult));
      final successResponse = await controller.makeMove('123id', 'b5a3');
      // Now it was successful, so let's set the id
      expect(successResponse.asRightResult, isA<VoidSucess>());
      expect(controller.currentUserTurnId, '123id');
    });

    test('Should manege a error when ir accours', () async {
      when(() => makeMoveUsecase(param)).thenReturn(left(MockMatchFailure()));
      final response = await controller.makeMove('testID', 'b5a3');

      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<MockMatchFailure>());
    });

    test('Should use the usecase that makes a move', () async {
      when(() => makeMoveUsecase(param)).thenReturn(right(fakeResult));
      await controller.makeMove('testID', 'b5a3');
      verify(() => makeMoveUsecase(param)).called(1);
    });
  });

  group('Should pass a turn as expected', () {
    test('Shoul update the current user in the turn in the class', () {
      // Before the movement, is the initial value defined in the controller
      expect(controller.currentUserTurnId, equals('testID'));

      // After the the function, the movement, has to update current user of class
      controller.passUserTurn('newID');
      expect(controller.currentUserTurnId, equals('newID'));
    });

    test('Should return a success when all goes okay', () async {
      final response = await controller.passUserTurn('newID');
      expect(response.isRight(), isTrue);
      expect(response.asRightResult, isA<VoidSucess>());
    });

    test('Should add the pass turn event to the events stream', () async {
      await controller.passUserTurn('newID');
      const expectedEvent = MatchEvent.passTurnOtherToUser(userId: 'newID');
      expect(await controller.outEvents.first, expectedEvent);
    });
  });

  group('Should manege a user surrender as expected', () {
    test('Should return a success when all goes okay', () async {
      final response = await controller.surrender('newID');
      expect(response.isRight(), isTrue);
      expect(response.asRightResult, isA<VoidSucess>());
    });

    test('Should add the user surrender event to the events stream', () async {
      await controller.surrender('newID');
      const expectedEvent = MatchEvent.surrender(surrenderingUserId: 'newID');
      expect(await controller.outEvents.first, expectedEvent);
    });
  });

  group('Should obtain the board state as expected', () {
    const piece = BoardEntity(coordenate: Coordenate(0, 0), piece: fakePiece);
    const user = UserStateEntity(playerId: '_', currentMana: 0);
    const fakeReturn = ReturnGetMatchStatesUsecase(
      boardState: [piece],
      usersInTheMatchState: [user],
    );
    test('Should return the battle state model', () async {
      when(() => getMatchStatesUsecase()).thenAnswer((_) => right(fakeReturn));
      final response = await controller.getTheBoardState();

      const battleState = BattleCurrentStateModel(
        currentUserId: 'testID',
        boardState: [piece],
        usersInTheMatchState: [user],
      );
      expect(response.isRight(), isTrue);
      expect(response.asRightResult, isA<BattleCurrentStateModel>());
      expect(response.asRightResult, equals(battleState));
    });

    test('Should call the usecase that gets the match state', () async {
      when(() => getMatchStatesUsecase()).thenAnswer((_) => right(fakeReturn));
      await controller.getTheBoardState();
      verify(() => getMatchStatesUsecase()).called(1);
    });

    test('Should return failure of the usecase that gets the match state',
        () async {
      when(() => getMatchStatesUsecase())
          .thenAnswer((_) => left(MockMatchFailure()));
      final response = await controller.getTheBoardState();

      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<MockMatchFailure>());
    });
  });
}
