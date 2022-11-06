import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/update_piece_state_usecase/impl_update_piece_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/update_piece_state_usecase/param_update_piece_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/update_piece_state_usecase/protocol_update_piece_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/failure_mocks.dart';
import '../../../../helpers/mock_piece.dart';

class MockProtocolBoardRepository extends Mock
    implements ProtocolBoardRepository {}

void main() {
  setUpAll(() {
    registerFallbackValue(const Coordenate(3, 3));
  });
  late ProtocolBoardRepository repository;
  late ProtocolUpdatePieceStateUsecase usecase;
  late ChangeUpdatePieceStateParam param;
  const coordenate = Coordenate(3, 3);
  setUp(() {
    repository = MockProtocolBoardRepository();
    usecase = ImplUpdatePieceStateUsecase(boardRepository: repository);
    param = ChangeUpdatePieceStateParam(
      coordenates: coordenate,
      newPieceState: (_) => _,
    );
  });

  group('Should update a piece in a determinate coordenate', () {
    test('Should return a piece piece', () async {
      when(() => repository.updatePieceInCoordenate(any(), any()))
          .thenReturn(right(fakePiece));

      final response = await usecase(param);

      expect(response.isRight(), equals(true));
      expect(response.asRightResult, isA<VoidSucess>());
    });

    test(
      'Should use the parameter coordenate while updating the piece in the repository',
      () async {
        when(() => repository.updatePieceInCoordenate(coordenate, any()))
            .thenReturn(right(fakePiece));

        await usecase(param);
        verify(() => repository.updatePieceInCoordenate(coordenate, any()))
            .called(1);
      },
    );

    test(
      'Should use the parameter that gives the piece to be updated'
      ' while updating the piece in the repository',
      () async {
        when(
          () => repository.updatePieceInCoordenate(any(), param.newPieceState),
        ).thenReturn(right(fakePiece));

        await usecase(param);
        verify(
          () => repository.updatePieceInCoordenate(any(), param.newPieceState),
        ).called(1);
      },
    );
  });

  test('Should return a error when repository returns a error', () async {
    when(() => repository.updatePieceInCoordenate(any(), any()))
        .thenReturn(left(MockMatchFailure()));

    final response = await usecase(param);

    expect(response.isRight(), equals(false));
    expect(response.asLeftResult, isA<MatchFailure>());
    expect(response.asLeftResult, isA<MockMatchFailure>());
    verify(() => repository.updatePieceInCoordenate(any(), any())).called(1);
  });
}
