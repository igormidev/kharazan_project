import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/impl_get_piece_valid_movimentation_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/param_get_piece_valid_moves_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import '../../../../helpers/failure_mocks.dart';
import '../../../../helpers/mock_piece.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'auxiliary_functions_test.dart';

class MockProtocolBoardRepository extends Mock
    implements ProtocolBoardRepository {}

class MockPieceEntity extends Mock implements PieceEntity {}

void main() {
  setUpAll(() {
    registerFallbackValue(const Coordenate(3, 3));
  });
  late ProtocolBoardRepository repository;
  late ImplGetPieceValidMovimentationUsecase usecase;
  late GetPieceValidMovesParam param;
  const coordenate = Coordenate(3, 3);
  final PieceEntity pieceMock = MockPieceEntity();
  setUp(() {
    repository = MockProtocolBoardRepository();
    usecase =
        ImplGetPieceValidMovimentationUsecase(boardRepository: repository);
    param = const GetPieceValidMovesParam(coordenate: coordenate);
  });

  group('Should obtain all possible movimentation moves', () {
    test('Should obtain the valid moves and use the repository', () async {
      when(() => repository.obtainCoordenatesInTheBoard())
          .thenReturn(right(fieldLimit));
      when(() => repository.obtainPieceInCoordenate(any()))
          .thenReturn(right(fakePiece));
      when(() => repository.obtainEntitiesInTheBoard())
          .thenReturn(right([fakeBoardEntity]));

      final response = usecase(param);

      expect(response.isRight(), equals(true));
      expect(response.asRightResult, isA<List<Coordenate>>());
      verify(() => repository.obtainCoordenatesInTheBoard()).called(1);
      verify(() => repository.obtainPieceInCoordenate(any())).called(1);
    });

    test('Should obtain the movimentation area from the piece function',
        () async {
      when(() => pieceMock.obtainMovesArea(param.coordenate))
          .thenReturn(<Coordenate>[const Coordenate(0, 0)]);

      when(() => repository.obtainCoordenatesInTheBoard())
          .thenReturn(right(fieldLimit));
      when(() => repository.obtainPieceInCoordenate(any()))
          .thenReturn(right(pieceMock));
      when(() => repository.obtainEntitiesInTheBoard())
          .thenReturn(right([fakeBoardEntity]));

      usecase(param);

      // Needs to be exactly the same coordinate of the param
      verify(() => pieceMock.obtainMovesArea(param.coordenate)).called(1);
    });
  });

  group('Should manege error as expected', () {
    test(
        'Should return the repository error when obtaining '
        'coordenates of the limits of board', () async {
      when(() => repository.obtainCoordenatesInTheBoard())
          .thenReturn(left(MockMatchFailure()));
      when(() => repository.obtainPieceInCoordenate(any()))
          .thenReturn(right(fakePiece));

      final response = usecase(param);

      expect(response.isLeft(), equals(true));
      expect(response.asLeftResult, isA<MockMatchFailure>());
      verify(() => repository.obtainCoordenatesInTheBoard()).called(1);
      verifyNever(() => repository.obtainPieceInCoordenate(any()));
    });

    test(
        'Should return the repository error obtaining '
        'the piece in the coordenate', () async {
      when(() => repository.obtainCoordenatesInTheBoard())
          .thenReturn(right(fieldLimit));
      when(() => repository.obtainPieceInCoordenate(any()))
          .thenReturn(left(MockMatchFailure()));

      final response = usecase(param);

      expect(response.isLeft(), equals(true));
      expect(response.asLeftResult, isA<MockMatchFailure>());
      verify(() => repository.obtainPieceInCoordenate(any())).called(1);
      verify(() => repository.obtainCoordenatesInTheBoard()).called(1);
    });

    test(
        'Should return the repository error  '
        'obtaining the entities in the board', () async {
      when(() => repository.obtainCoordenatesInTheBoard())
          .thenReturn(right(fieldLimit));
      when(() => repository.obtainPieceInCoordenate(any()))
          .thenReturn(left(MockMatchFailure()));

      final response = usecase(param);

      expect(response.isLeft(), equals(true));
      expect(response.asLeftResult, isA<MockMatchFailure>());
      verify(() => repository.obtainPieceInCoordenate(any())).called(1);
      verify(() => repository.obtainCoordenatesInTheBoard()).called(1);
    });
  });

  group('Should remove coordenates that arent in the board', () {
    /// TODO: MAKE TEST
  });
}
