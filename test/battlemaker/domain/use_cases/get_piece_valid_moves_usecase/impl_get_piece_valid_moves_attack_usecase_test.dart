import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/impl_get_piece_valid_moves_attack_usecase.dart';
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

class MockBoardEntity extends Mock implements BoardEntity {}

void main() {
  setUpAll(() {
    registerFallbackValue(const Coordenate(3, 3));
  });
  late ProtocolBoardRepository repository;
  late ImplGetPieceValidMovesAttackUsecase usecase;
  late GetPieceValidMovesParam param;
  const coordenate = Coordenate(3, 3);
  final PieceEntity pieceMock = MockPieceEntity();
  final BoardEntity mockEntity = MockBoardEntity();
  setUp(() {
    repository = MockProtocolBoardRepository();
    usecase = ImplGetPieceValidMovesAttackUsecase(boardRepository: repository);
    param = const GetPieceValidMovesParam(coordenate: coordenate);
    when(() => repository.obtainEntitiesInTheBoard())
        .thenReturn(right([fakeBoardEntity]));
    when(() => repository.obtainCoordenatesInTheBoard())
        .thenReturn(right(fieldLimit));
    when(() => mockEntity.piece).thenReturn(fakePiece);
    when(() => mockEntity.pieceOwnerId).thenReturn('test');
    when(() => repository.obtainBoardEntityInCoordenate(any()))
        .thenReturn(right(fakeBoardEntity));
  });

  group('Should obtain all possible attack moves', () {
    test('Should obtain the valid moves and use the repository', () async {
      when(() => repository.obtainBoardEntityInCoordenate(any()))
          .thenReturn(right(fakeBoardEntity));

      final response = usecase(param);

      expect(response.isRight(), equals(true));
      expect(response.asRightResult, isA<List<Coordenate>>());
      verify(() => repository.obtainCoordenatesInTheBoard()).called(1);
      verify(() => repository.obtainBoardEntityInCoordenate(any())).called(1);
    });

    test('Should obtain the attack area from the piece function', () async {
      when(() => pieceMock.obtainAttackArea(param.coordenate))
          .thenReturn(<Coordenate>[const Coordenate(0, 0)]);
      when(() => repository.obtainBoardEntityInCoordenate(any()))
          .thenReturn(right(mockEntity));

      usecase(param);

      // Needs to be exactly the same coordinate of the param
      verify(() => mockEntity.piece.obtainAttackArea(param.coordenate))
          .called(1);
    });
  });

  group('Should manege error as expected', () {
    test(
        'Should return the repository error when obtaining '
        'coordenates of the limits of board', () async {
      when(() => repository.obtainCoordenatesInTheBoard())
          .thenReturn(left(MockMatchFailure()));
      when(() => repository.obtainBoardEntityInCoordenate(any()))
          .thenReturn(right(fakeBoardEntity));

      final response = usecase(param);

      expect(response.isLeft(), equals(true));
      expect(response.asLeftResult, isA<MockMatchFailure>());
      verify(() => repository.obtainCoordenatesInTheBoard()).called(1);
      verifyNever(() => repository.obtainBoardEntityInCoordenate(any()));
    });

    test(
        'Should return the repository error obtaining '
        'the piece in the coordenate', () async {
      when(() => repository.obtainBoardEntityInCoordenate(any()))
          .thenReturn(left(MockMatchFailure()));

      final response = usecase(param);

      expect(response.isLeft(), equals(true));
      expect(response.asLeftResult, isA<MockMatchFailure>());
      verify(() => repository.obtainBoardEntityInCoordenate(any())).called(1);
      verify(() => repository.obtainCoordenatesInTheBoard()).called(1);
    });

    test('Should return error when cant obtain entities in the board',
        () async {
      when(() => repository.obtainEntitiesInTheBoard())
          .thenReturn(left(MockMatchFailure()));
      final response = usecase(param);
      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<MockMatchFailure>());
    });
  });

  group('Should filter the moves as expected', () {
    test('Should ontain all the entities from the board repository', () async {
      usecase(param);
      verify(() => repository.obtainEntitiesInTheBoard()).called(1);
    });
  });
}
