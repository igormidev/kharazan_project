import 'package:flutter_test/flutter_test.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/data/dto/piece_dto.dart';
import 'package:micro_kharazan/battlemaker/data/repositories/impl_board_repository.dart';
import 'package:micro_kharazan/battlemaker/data/source/protocol_board_source.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/failure_mocks.dart';
import '../../../helpers/mock_piece.dart';

class MockProtocolBoardSource extends Mock implements ProtocolBoardSource {}

void main() {
  late ProtocolBoardRepository boardRepository;
  late ProtocolBoardSource boardSource;
  const coordenate = Coordenate(0, 0);

  setUpAll(() {
    registerFallbackValue(const BoardEntity(
        coordenate: coordenate, piece: fakePiece, pieceOwnerId: 'test'));
    registerFallbackValue(const Coordenate(0, 0));
  });

  setUp(() {
    boardSource = MockProtocolBoardSource();
    boardRepository = ImplBoardRepository(boardSource);
  });

  group('Should create a piece a piece in coordenate as expected', () {
    test('Should create a piece entity using the source of the board', () {
      when(() => boardSource.createEntityInCoordenate(any()))
          .thenReturn(right(fakeBoardEntity));
      final response = boardRepository.createPieceInCoordenate(
          coordenate, fakePiece, 'test');
      verify(() => boardSource.createEntityInCoordenate(any())).called(1);
      expect(response.asRightResult, fakeBoardEntity.piece);
    });

    test('Should use parameters passed in the functions', () {
      const boardEntity = BoardEntity(
          coordenate: coordenate, piece: fakePiece, pieceOwnerId: 'test');
      when(() => boardSource.createEntityInCoordenate(boardEntity))
          .thenReturn(right(fakeBoardEntity));

      boardRepository.createPieceInCoordenate(coordenate, fakePiece, 'test');
      verify(() => boardSource.createEntityInCoordenate(boardEntity)).called(1);
    });

    test('Should return the source error', () {
      when(() => boardSource.createEntityInCoordenate(any()))
          .thenReturn(left(MockMatchFailure()));

      final response = boardRepository.createPieceInCoordenate(
          coordenate, fakePiece, 'test');
      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<MockMatchFailure>());
    });
  });

  group('Should obtain the coorrdenates of the board, the board limits', () {
    test(
        'Should obtain the the board entities and '
        'return coordenates of each entity in a list', () {
      when(() => boardSource.getFieldLimits())
          .thenReturn(right(<Coordenate>[coordenate]));

      final response = boardRepository.obtainCoordenatesInTheBoard();

      verify(() => boardSource.getFieldLimits()).called(1);
      expect(response.asRightResult, isA<List<Coordenate>>());
      expect(response.asRightResult, equals([coordenate]));
    });

    test('Should return the source error when obtaining entities of board', () {
      when(() => boardSource.getFieldLimits())
          .thenReturn(left(MockMatchFailure()));

      final response = boardRepository.obtainCoordenatesInTheBoard();
      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<MockMatchFailure>());
    });
  });

  group('Should obtain piece in a passed coordenate', () {
    test('Should obtain the coordenate using the source for it', () {
      when(() => boardSource.getEntityInCoordenate(any()))
          .thenReturn(right(fakeBoardEntity));
      final response = boardRepository.obtainPieceInCoordenate(coordenate);
      verify(() => boardSource.getEntityInCoordenate(any())).called(1);
      expect(response.asRightResult, fakeBoardEntity.piece);
    });

    test('Should obtain the piece and use coordenate parameter', () {
      when(() => boardSource.getEntityInCoordenate(coordenate))
          .thenReturn(right(fakeBoardEntity));

      boardRepository.obtainPieceInCoordenate(coordenate);
      verify(() => boardSource.getEntityInCoordenate(coordenate)).called(1);
    });

    test('Should return the same source error when a error accours', () {
      when(() => boardSource.getEntityInCoordenate(any()))
          .thenReturn(left(MockMatchFailure()));

      final response = boardRepository.obtainPieceInCoordenate(coordenate);
      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<MockMatchFailure>());
    });
  });

  group('Shoud remove piece from board as expected', () {
    test(
        'Should remove piece in board with source and return the removed piece',
        () {
      when(() => boardSource.removeEntityInCoordenate(any()))
          .thenReturn(right(fakeBoardEntity));
      final response = boardRepository.removeEntityInCoordenate(coordenate);
      verify(() => boardSource.removeEntityInCoordenate(any())).called(1);
      expect(response.asRightResult, fakeBoardEntity);
    });

    test(
        'Should use the coordenate passed in the parameter while using the source',
        () {
      when(() => boardSource.removeEntityInCoordenate(coordenate))
          .thenReturn(right(fakeBoardEntity));

      boardRepository.removeEntityInCoordenate(coordenate);
      verify(() => boardSource.removeEntityInCoordenate(coordenate)).called(1);
    });

    test('Should return the error of the source', () {
      when(() => boardSource.removeEntityInCoordenate(any()))
          .thenReturn(left(MockMatchFailure()));

      final response = boardRepository.removeEntityInCoordenate(coordenate);
      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<MockMatchFailure>());
    });
  });

  group('Should update piece in coordenate as expected', () {
    final boardEntity = BoardEntity(
        coordenate: coordenate,
        piece: fakePiece.copyWith(life: 1),
        pieceOwnerId: 'test');
    setUp(() {
      when(() => boardSource.getEntityInCoordenate(coordenate))
          .thenReturn(right(fakeBoardEntity));
      when(() => boardSource.updateEntityInCoordenate(coordenate, boardEntity))
          .thenReturn(right(boardEntity));
    });

    test('Should use sources and return the piece updated', () {
      final response = boardRepository.updatePieceInCoordenate(
          coordenate, (piece) => piece.copyWith(life: 1));

      verify(() => boardSource.getEntityInCoordenate(coordenate)).called(1);
      verify(() {
        return boardSource.updateEntityInCoordenate(coordenate, boardEntity);
      }).called(1);
      expect(response.asRightResult, fakePiece.copyWith(life: 1));
    });

    test('Should return error when cant get entity in source', () {
      when(() => boardSource.getEntityInCoordenate(any()))
          .thenReturn(left(MockMatchFailure()));

      final response = boardRepository.updatePieceInCoordenate(
          coordenate, (piece) => piece.copyWith(life: 1));

      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<MockMatchFailure>());
    });

    test('Should return error when cant update piece in source', () {
      when(() => boardSource.updateEntityInCoordenate(coordenate, boardEntity))
          .thenReturn(left(MockMatchFailure()));

      final response = boardRepository.updatePieceInCoordenate(
          coordenate, (piece) => piece.copyWith(life: 1));

      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<MockMatchFailure>());
    });
  });

  group('Should return all entities in the match', () {
    test('Using the data source, hould return all entities of the match', () {
      when(() => boardSource.getEntitiesInTheBoard())
          .thenReturn(right(<BoardEntity>[fakeBoardEntity]));
      final response = boardRepository.obtainEntitiesInTheBoard();
      verify(() => boardSource.getEntitiesInTheBoard()).called(1);

      expect(response.isRight(), isTrue);
      expect(response.asRightResult, [fakeBoardEntity]);
    });

    test('Should return error while trying to obtain', () {
      when(() => boardSource.getEntitiesInTheBoard())
          .thenReturn(left(MockMatchFailure()));

      final response = boardRepository.obtainEntitiesInTheBoard();
      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<MockMatchFailure>());
    });
  });

  group('Should return the entity as expected', () {
    test('Should return the entity in the passed coordenate', () {
      when(() => boardSource.getEntityInCoordenate(coordenate))
          .thenReturn(right(fakeBoardEntity));

      final response =
          boardRepository.obtainBoardEntityInCoordenate(coordenate);
      expect(response.isRight(), isTrue);
      expect(response.asRightResult, isA<BoardEntity>());
      expect(response.asRightResult, fakeBoardEntity);
    });

    test('Should return left error when data source returns a error', () {
      when(() => boardSource.getEntityInCoordenate(coordenate))
          .thenReturn(left(MockMatchFailure()));

      final response =
          boardRepository.obtainBoardEntityInCoordenate(coordenate);
      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<MockMatchFailure>());
    });
  });
}
