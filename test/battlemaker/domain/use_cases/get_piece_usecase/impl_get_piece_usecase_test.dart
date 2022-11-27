import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_usecase/impl_get_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_usecase/param_get_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_usecase/protocol_get_piece_usecase.dart';
import '../../../../helpers/failure_mocks.dart';
import '../../../../helpers/mock_piece.dart';

class MockProtocolBoardRepository extends Mock
    implements ProtocolBoardRepository {}

void main() {
  setUpAll(() {
    registerFallbackValue(const Coordenate(3, 3));
  });
  late ProtocolBoardRepository repository;
  late ProtocolGetPieceUsecase usecase;
  late GetPieceParam param;
  const coordenate = Coordenate(3, 3);
  setUp(() {
    repository = MockProtocolBoardRepository();
    usecase = ImplGetPieceUsecase(boardRepository: repository);
    param = const GetPieceParam(coordenates: coordenate);
  });

  group('Should get a piece', () {
    test('Should get a piece in a coordenate', () {
      when(() => repository.obtainPieceInCoordenate(any()))
          .thenReturn(right(fakePiece));

      final response = usecase(param);

      expect(response.isRight(), equals(true));
      expect(response.asRightResult, isA<PieceEntity>());
      expect(response.asRightResult, equals(fakePiece));
      verify(() => repository.obtainPieceInCoordenate(any())).called(1);
    });

    test(
        'Should use the parameter of the coordenate while obtaining the piece from repository',
        () {
      when(() => repository.obtainPieceInCoordenate(coordenate))
          .thenReturn(right(fakePiece));
      usecase(param);

      // Needs to be called with this parameter
      verify(() => repository.obtainPieceInCoordenate(coordenate)).called(1);
    });
  });

  test('Should return a error when repository returns a error', () {
    when(() => repository.obtainPieceInCoordenate(any()))
        .thenReturn(left(MockMatchFailure()));

    final response = usecase(param);

    expect(response.isRight(), isFalse);
    expect(response.asLeftResult, isA<MatchFailure>());
    expect(response.asLeftResult, isA<MockMatchFailure>());
    verify(() => repository.obtainPieceInCoordenate(any())).called(1);
  });

  test(
    'Should return right null when the error from '
    'the repositorie is that the piece dosent exists',
    () {
      when(() => repository.obtainPieceInCoordenate(any()))
          .thenReturn(left(NoEntityFoundInCoordenate()));

      final response = usecase(param);

      expect(response.isRight(), isTrue);
      expect(response.asRightResult, equals(null));
    },
  );
}
