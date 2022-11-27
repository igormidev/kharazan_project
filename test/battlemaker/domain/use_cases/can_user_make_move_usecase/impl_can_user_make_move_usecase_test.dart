import 'package:flutter_test/flutter_test.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/data/dto/user_state_dto.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_match_state_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/impl_can_user_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/param_can_user_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/protocol_can_user_make_move_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import '../../../../helpers/mock_piece.dart';
import '../../../../helpers/failure_mocks.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';

class MockMatchStateRepository extends Mock
    implements ProtocolMatchStateRepository {}

void main() {
  late ProtocolMatchStateRepository repository;
  late ProtocolCanUserMakeMoveUsecase usecase;
  late CanUserMakeMoveParam param;
  setUp(() {
    repository = MockMatchStateRepository();
    usecase = ImplCanUserMakeMoveUsecase(matchStateRepository: repository);
    param = const CanUserMakeMoveParam(
      userId: '123',
      neededManaToMakeMove: 3,
    );
  });

  test('Should get a piece in a coordenate', () async {
    when(() => repository.getUserState(any())).thenReturn(right(fakeUserState));

    final response = usecase(param);

    expect(response.isRight(), equals(true));
    expect(response.asRightResult, isA<VoidSucess>());
    verify(() => repository.getUserState(any())).called(1);
  });

  test('Should return the repository error when a error occurs in it',
      () async {
    when(() => repository.getUserState(any()))
        .thenReturn(left(MockMatchFailure()));

    final response = usecase(param);

    expect(response.isLeft(), equals(true));
    expect(response.asLeftResult, isA<MatchFailure>());
    expect(response.asLeftResult, isA<MockMatchFailure>());
    verify(() => repository.getUserState(any())).called(1);
  });

  test('Should return a error that the user don\'t have mana to make the move',
      () async {
    when(() => repository.getUserState(any())).thenReturn(
      // The returned user only have 4 of mana
      right(fakeUserState.copyWith(currentMana: 4)),
    );

    final response = usecase(const CanUserMakeMoveParam(
      userId: '123',
      // Needs 5 mana to make the move, its more that the user have (4)
      neededManaToMakeMove: 5,
    ));

    expect(response.isLeft(), equals(true));
    expect(response.asLeftResult, isA<MatchFailure>());
    expect(response.asLeftResult, isA<DosentHaveMana>());
    verify(() => repository.getUserState(any())).called(1);
  });
}
