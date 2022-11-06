import 'package:flutter_test/flutter_test.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/change_piece_position_usecase/impl_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/change_piece_position_usecase/param_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/change_piece_position_usecase/protocol_change_piece_position_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import '../../../../helpers/mock_piece.dart';

class MockProtocolBoardRepository extends Mock
    implements ProtocolBoardRepository {}

class MockRemovePieceFailure extends Mock implements MatchFailure {}

class MockCreatingAPieceFailure extends Mock implements MatchFailure {}

void main() {
  setUpAll(() {
    registerFallbackValue(fakePiece);
    registerFallbackValue(const Coordenate(3, 3));
  });

  late ProtocolBoardRepository repository;
  late ProtocolChangePiecePositionUsecase usecase;
  late ChangePiecePositionParam param;
  const coordenate = Coordenate(3, 3);
  setUp(() {
    repository = MockProtocolBoardRepository();
    usecase = ImplChangePiecePositionUsecase(boardRepository: repository);
    param = const ChangePiecePositionParam(coordenates: coordenate);
  });

  group('Should change the piece position', () {
    test('Should get a piece in a coordenate', () async {
      when(() => repository.removeEntityInCoordenate(any()))
          .thenReturn(right(fakeBoardEntity));
      when(() => repository.createPieceInCoordenate(any(), any(), any()))
          .thenReturn(right(fakePiece));

      final response = await usecase(param);

      expect(response.isRight(), equals(true));
      expect(response.asRightResult, isA<VoidSucess>());
      verify(() => repository.removeEntityInCoordenate(any())).called(1);
      verify(() => repository.createPieceInCoordenate(any(), any(), any()))
          .called(1);
    });

    test('Should use the removed piece as a parameter to create a piece',
        () async {
      when(() => repository.removeEntityInCoordenate(any()))
          // Have to use this piece here
          .thenReturn(right(fakeBoardEntity));
      // as the parameter to create a piece
      when(() => repository.createPieceInCoordenate(any(), fakePiece, 'test'))
          .thenReturn(right(fakePiece));

      final response = await usecase(param);

      expect(response.isRight(), equals(true));
      expect(response.asRightResult, isA<VoidSucess>());
      verify(() => repository.removeEntityInCoordenate(any())).called(1);
      verify(() => repository.createPieceInCoordenate(any(), fakePiece, 'test'))
          .called(1);
    });

    test(
        'Should use the coordenate in the usecase param model when creating a piece',
        () async {
      when(() => repository.removeEntityInCoordenate(any()))
          .thenReturn(right(fakeBoardEntity));
      // Here we are using the same coordenate passed in the usecase param model
      when(() => repository.createPieceInCoordenate(coordenate, any(), 'test'))
          .thenReturn(right(fakePiece));

      final response = await usecase(param);

      expect(response.isRight(), equals(true));
      expect(response.asRightResult, isA<VoidSucess>());
      verify(() => repository.removeEntityInCoordenate(any())).called(1);
      verify(() =>
              repository.createPieceInCoordenate(coordenate, any(), 'test'))
          .called(1);
    });
  });

  group('Should return a error while communicating with the repository', () {
    test('Should return the repository error while removing the piece',
        () async {
      when(() => repository.removeEntityInCoordenate(any()))
          .thenReturn(left(MockRemovePieceFailure()));
      when(() => repository.createPieceInCoordenate(any(), any(), any()))
          .thenReturn(right(fakePiece));

      final response = await usecase(param);

      expect(response.isLeft(), equals(true));
      expect(response.asLeftResult, isA<MatchFailure>());
      expect(response.asLeftResult, isA<MockRemovePieceFailure>());
      verify(() => repository.removeEntityInCoordenate(any())).called(1);
      verifyNever(
          () => repository.createPieceInCoordenate(any(), any(), any()));
    });

    test('Should return the repository error while creating a piece', () async {
      when(() => repository.removeEntityInCoordenate(any()))
          .thenReturn(right(fakeBoardEntity));
      when(() => repository.createPieceInCoordenate(any(), any(), any()))
          .thenReturn(left(MockCreatingAPieceFailure()));

      final response = await usecase(param);

      expect(response.isLeft(), equals(true));
      expect(response.asLeftResult, isA<MatchFailure>());
      expect(response.asLeftResult, isA<MockCreatingAPieceFailure>());
      verify(() => repository.removeEntityInCoordenate(any())).called(1);
      verify(() => repository.createPieceInCoordenate(any(), any(), any()))
          .called(1);
    });
  });
}
