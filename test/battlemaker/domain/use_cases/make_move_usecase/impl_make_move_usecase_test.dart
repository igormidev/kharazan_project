import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/param_can_user_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/protocol_can_user_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/change_piece_position_usecase/param_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/change_piece_position_usecase/protocol_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/deal_damage_to_piece_usecase/param_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/deal_damage_to_piece_usecase/protocol_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/protocol_get_match_states_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/return_get_match_states_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_usecase/param_get_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_usecase/protocol_get_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/impl_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/param_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/protocol_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/return_make_move_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/failure_mocks.dart';
import '../../../../helpers/mock_piece.dart';

class MockProtocolGetMatchStatesUsecase extends Mock
    implements ProtocolGetMatchStatesUsecase {}

class MockProtocolChangePiecePositionUsecase extends Mock
    implements ProtocolChangePiecePositionUsecase {}

class MockProtocolDealDamageToPieceUsecase extends Mock
    implements ProtocolDealDamageToPieceUsecase {}

class MockProtocolCanUserMakeMoveUsecase extends Mock
    implements ProtocolCanUserMakeMoveUsecase {}

class MockProtocolGetPieceUsecase extends Mock
    implements ProtocolGetPieceUsecase {}

class MockProtocolMakeMoveUsecase extends Mock
    implements ProtocolMakeMoveUsecase {}

void main() {
  setUpAll(() {
    const c = Coordenate(0, 0);
    registerFallbackValue(const GetPieceParam(coordenates: c));
    registerFallbackValue(
        const DealDamageToPieceParam(damage: 0, coordenates: c));
    registerFallbackValue(const ChangePiecePositionParam(coordenates: c));
    registerFallbackValue(
      const CanUserMakeMoveParam(userId: '', neededManaToMakeMove: 1),
    );
  });

  // Auxiluary usecases
  late ProtocolGetMatchStatesUsecase getMatchStatesUsecase;
  late ProtocolChangePiecePositionUsecase changePiecePositionUsecase;
  late ProtocolDealDamageToPieceUsecase dealDamageToPieceUsecase;
  late ProtocolCanUserMakeMoveUsecase canUserMakeMoveUsecase;
  late ProtocolGetPieceUsecase getPieceUsecase;

  // Main usecase
  late ProtocolMakeMoveUsecase makeMoveUsecase;

  const param = MakeMoveParam(userId: 'testID', move: '5643');

  setUp(() {
    getMatchStatesUsecase = MockProtocolGetMatchStatesUsecase();
    changePiecePositionUsecase = MockProtocolChangePiecePositionUsecase();
    dealDamageToPieceUsecase = MockProtocolDealDamageToPieceUsecase();
    canUserMakeMoveUsecase = MockProtocolCanUserMakeMoveUsecase();
    getPieceUsecase = MockProtocolGetPieceUsecase();

    makeMoveUsecase = ImplMakeMoveUsecase(
      getMatchStatesUsecase: getMatchStatesUsecase,
      changePiecePositionUsecase: changePiecePositionUsecase,
      dealDamageToPieceUsecase: dealDamageToPieceUsecase,
      canUserMakeMoveUsecase: canUserMakeMoveUsecase,
      getPieceUsecase: getPieceUsecase,
    );

    when(() => getPieceUsecase(any())).thenReturn(right(fakePiece));
    when(() => canUserMakeMoveUsecase(any())).thenReturn(right(VoidSucess()));
    when(() => dealDamageToPieceUsecase(any())).thenReturn(right(false));
    when(() => changePiecePositionUsecase(any()))
        .thenReturn(right(VoidSucess()));
    when(() => getMatchStatesUsecase()).thenReturn(right(fakeGetMatchStates));
  });

  group(
      'Should obtain origin/destiny pieces '
      'from there coordenates as expected', () {
    test(
        'Should obtain piece with correct parameters '
        'in usecase of where the pieces are', () async {
      const param = MakeMoveParam(userId: 'testID', move: '5643');
      await makeMoveUsecase(param);

      // Should have exactly this coordenates, based on '5643' move
      const origin = GetPieceParam(coordenates: Coordenate(5, 6));
      const destiny = GetPieceParam(coordenates: Coordenate(4, 3));
      verify(() => getPieceUsecase(origin)).called(1);
      verify(() => getPieceUsecase(destiny)).called(1);
    });

    test('Should return error when passed a invalid move (ex: abcd)', () async {
      final invalidMoves = <String>['abcd', '12345', '12ab', '12', '123', ''];
      for (var invalidMove in invalidMoves) {
        final brokedParam = MakeMoveParam(userId: 'testID', move: invalidMove);
        final response = await makeMoveUsecase(brokedParam);
        expect(response.asLeftResult, isA<ErrorWhileCastingMovement>());
      }
    });

    test(
        'Should return the get piece usecase error when '
        'it accours while getting the origin piece', () async {
      const origin = GetPieceParam(coordenates: Coordenate(5, 6));
      const destiny = GetPieceParam(coordenates: Coordenate(4, 3));
      when(() => getPieceUsecase(origin)).thenReturn(left(MockMatchFailure()));
      final responese = await makeMoveUsecase(param);
      verify(() => getPieceUsecase(origin)).called(1);
      verifyNever(() => getPieceUsecase(destiny));

      expect(responese.asLeftResult, isA<MockMatchFailure>());
    });

    test(
        'Should return the get piece usecase error when '
        'it accours while getting the destiny piece', () async {
      const origin = GetPieceParam(coordenates: Coordenate(5, 6));
      const destiny = GetPieceParam(coordenates: Coordenate(4, 3));
      when(() => getPieceUsecase(destiny)).thenReturn(left(MockMatchFailure()));
      final responese = await makeMoveUsecase(param);
      verify(() => getPieceUsecase(origin)).called(1);
      verify(() => getPieceUsecase(destiny)).called(1);

      expect(responese.asLeftResult, isA<MockMatchFailure>());
    });
  });

  group('Should make move validations as expected', () {
    test(
      'Should return a error that the origin piece dosent exists '
      'if there is no piece in origin coordenate passed by the user',
      () async {
        // Returning null, so that means theres no piece in the origin coordenate
        when(() => getPieceUsecase(any())).thenReturn(right(null));
        final responese = await makeMoveUsecase(param);

        // If the origin coordenate is null, needs to return a error
        expect(responese.asLeftResult, isA<InvalidPieceLocation>());
      },
    );

    test(
      'Should use the userId passed in the make move parameter and '
      'the cost of mana equals the origin piece cost',
      () async {
        const origin = GetPieceParam(coordenates: Coordenate(5, 6));
        when(() => getPieceUsecase(origin)).thenReturn(right(fakePiece));
        await makeMoveUsecase(param);

        final expectedResponse = CanUserMakeMoveParam(
          userId: param.userId, // the id from the parameter
          neededManaToMakeMove: fakePiece.cost, // the origin piece cost
        );
        // Needs to call the usecase thats will validate if user can make
        // move with the coorect parameter
        verify(() => canUserMakeMoveUsecase(expectedResponse)).called(1);
      },
    );

    test(
      'Should return a error when the usecase validates that the user can not make move',
      () async {
        when(() => canUserMakeMoveUsecase(any()))
            .thenAnswer((_) async => left(MockMatchFailure()));

        final response = await makeMoveUsecase(param);
        expect(response.asLeftResult, isA<MockMatchFailure>());
      },
    );

    test(
      'Should call deal damage usecase when exists a piece '
      'in coordenate destiny, and not make movement usecase',
      () async {
        const destiny = GetPieceParam(coordenates: Coordenate(4, 3));
        // In this case, exists a piece in destiny, so the origin piece
        // is macking a attack, and not a movement (only changing position)
        when(() => getPieceUsecase(destiny)).thenReturn(right(fakePiece));
        await makeMoveUsecase(param);
        verifyNever(() => changePiecePositionUsecase(any()));
        verify(() => dealDamageToPieceUsecase(any())).called(1);
      },
    );

    test(
      'Should call change position usecase when exists a piece '
      'in coordenate destiny, and not make deal damage usecase',
      () async {
        const destiny = GetPieceParam(coordenates: Coordenate(4, 3));
        // In this case, dosent exists a piece in destiny, so the origin piece
        // is macking a movement (only changing position), and not a attack move
        when(() => getPieceUsecase(destiny)).thenReturn(right(null));
        await makeMoveUsecase(param);
        verify(() => changePiecePositionUsecase(any())).called(1);
        verifyNever(() => dealDamageToPieceUsecase(any()));
      },
    );

    test(
      'Should return error if change position usecase returns a error',
      () async {
        const destiny = GetPieceParam(coordenates: Coordenate(4, 3));
        when(() => getPieceUsecase(destiny)).thenReturn(right(fakePiece));
        when(() => dealDamageToPieceUsecase(any()))
            .thenAnswer((_) => left(MockMatchFailure()));

        final response = await makeMoveUsecase(param);
        expect(response.asLeftResult, isA<MockMatchFailure>());
      },
    );

    test(
      'Should return error if deal damage usecase returns a error',
      () async {
        const destiny = GetPieceParam(coordenates: Coordenate(4, 3));
        when(() => getPieceUsecase(destiny)).thenReturn(right(null));
        when(() => changePiecePositionUsecase(any()))
            .thenAnswer((_) => left(MockMatchFailure()));

        final response = await makeMoveUsecase(param);
        expect(response.asLeftResult, isA<MockMatchFailure>());
      },
    );
  });

  group('Should return the response as expected', () {
    test(
      'Should return match states in the return of the make move usecase',
      () async {
        when(() => getMatchStatesUsecase()).thenAnswer(
          (_) => right(const ReturnGetMatchStatesUsecase(
            boardState: <BoardEntity>[fakeBoardEntity],
            usersInTheMatchState: <UserStateEntity>[fakeUserState],
          )),
        );
        final response = await makeMoveUsecase(param);

        final makeMoveReturn = ReturnMakeMoveUsecase(
          moveMaked: CoordenatesInMove.fromString('5643'),
          playerThatMakedMoveId: 'testID',
          boardState: const <BoardEntity>[fakeBoardEntity],
          usersInTheMatchState: const <UserStateEntity>[fakeUserState],
        );
        verify(() => getMatchStatesUsecase()).called(1);
        expect(response.asRightResult, makeMoveReturn);
      },
    );

    test(
      'Should return a error when the use case that get match state returns a error',
      () async {
        when(() => getMatchStatesUsecase())
            .thenAnswer((_) => left(MockMatchFailure()));
        final response = await makeMoveUsecase(param);

        expect(response.asLeftResult, isA<MockMatchFailure>());
      },
    );
  });
}
