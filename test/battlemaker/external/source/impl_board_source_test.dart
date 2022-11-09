import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/data/source/protocol_board_source.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/collections/collection_pieces.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/external/source/impl_board_source.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late ProtocolBoardSource source;
  const coordenate = Coordenate(2, 6);
  const list = <BoardEntity>[
    BoardEntity(
        coordenate: Coordenate(6, 2), piece: medusa, pieceOwnerId: 'test'),
    BoardEntity(
        coordenate: Coordenate(3, 1), piece: pegasus, pieceOwnerId: 'test'),
    BoardEntity(
        coordenate: Coordenate(4, 3), piece: kraken, pieceOwnerId: 'test'),
    BoardEntity(
        coordenate: Coordenate(5, 5), piece: hermes, pieceOwnerId: 'test'),
    BoardEntity(
        coordenate: Coordenate(2, 3), piece: phoenix, pieceOwnerId: 'test'),
    BoardEntity(
        coordenate: Coordenate(2, 6), piece: griffin, pieceOwnerId: 'test')
  ];
  setUp(() {
    source =
        const ImplBoardSource(piecesInTheBoard: list, fieldLimits: fakeField);
  });

  group('Should create entity in list of board source as expected', () {
    test('Should add entity in list of entities of board', () {
      const entity = BoardEntity(
          coordenate: Coordenate(3, 3), piece: griffin, pieceOwnerId: 'test');
      source.createEntityInCoordenate(entity);
      final response = source.getEntitiesInTheBoard();
      expect(response.asRightResult, contains(entity));
    });

    test('Should return the exact same piece that was added', () {
      const entity = BoardEntity(
          coordenate: Coordenate(3, 3), piece: griffin, pieceOwnerId: 'test');
      final response = source.createEntityInCoordenate(entity);
      expect(response.asRightResult, entity);
    });

    test(
        'Should return error while adding entity in list '
        'if already exists a entity in coordenate', () {
      // Already exists a entity in this coordenate
      const entity = BoardEntity(
          coordenate: Coordenate(6, 2), piece: griffin, pieceOwnerId: 'test');
      final response = source.createEntityInCoordenate(entity);
      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<EntityAlreadyExistsInCoordenate>());
    });
  });

  group('Should obtain entities from board as expected', () {
    test('Should obtain the entities in the board', () {
      final response = source.getEntitiesInTheBoard();
      expect(response.asRightResult, list);
    });

    test('Should get a determine piece in a coordenate', () {
      final response = source.getEntityInCoordenate(coordenate);
      expect(
          response.asRightResult,
          const BoardEntity(
              coordenate: coordenate, piece: griffin, pieceOwnerId: 'test'));
    });

    test(
        'Should return error when trying to get a '
        'piece in a coordenate that dont exists', () {
      final response = source.getEntityInCoordenate(const Coordenate(9, 9));
      expect(response.asLeftResult, isA<NoEntityFoundInCoordenate>());
    });
  });

  group('Should create entity in list of board source as expected', () {
    test('Should update a already existing entity in a determinate coordenate',
        () {
      final responseBefore = source.getEntityInCoordenate(coordenate);
      final before = responseBefore.asRightResult; // Before, a medusa piece
      const oldEntity = BoardEntity(
          coordenate: coordenate, piece: griffin, pieceOwnerId: 'test');
      expect(before, oldEntity);

      // Lets execute
      const newEntity = BoardEntity(
          coordenate: coordenate, piece: kraken, pieceOwnerId: 'test');
      source.updateEntityInCoordenate(coordenate, newEntity);

      final responseAfter = source.getEntityInCoordenate(coordenate);
      final after = responseAfter.asRightResult; // After, its a kraken piece
      expect(after, newEntity);
    });

    test(
        'Should return error when there is no to update entity in the coordenate',
        () {
      // Dosent exists a piece in coordenate to update
      const invalid = Coordenate(9, 9);
      const entity = BoardEntity(
          coordenate: invalid, piece: griffin, pieceOwnerId: 'test');
      final response = source.updateEntityInCoordenate(invalid, entity);
      expect(response.isLeft(), isTrue);
      expect(response.asLeftResult, isA<NoEntityFoundInCoordenate>());
    });
  });

  group('Remove entity in a coordenate', () {
    test(
      'Should return a error when dosent exists '
      'a entity in a coordenate to remove',
      () {
        final response =
            source.removeEntityInCoordenate(const Coordenate(9, 9));
        expect(response.asLeftResult, isA<NoEntityFoundInCoordenate>());
      },
    );

    test('Should return exactly the removed entity', () {
      const entity = BoardEntity(
          coordenate: coordenate, piece: griffin, pieceOwnerId: 'test');
      final response = source.removeEntityInCoordenate(coordenate);
      expect(response.asRightResult, equals(entity));
    });

    test(
        'Should remove from the list of entities the '
        'entity in the coordenate parameter', () {
      final beforeList = source.getEntitiesInTheBoard();
      expect(beforeList.asRightResult, list);
      source.removeEntityInCoordenate(coordenate);

      final expectedAfterList = <BoardEntity>[
        const BoardEntity(
            coordenate: Coordenate(6, 2), piece: medusa, pieceOwnerId: 'test'),
        const BoardEntity(
            coordenate: Coordenate(3, 1), piece: pegasus, pieceOwnerId: 'test'),
        const BoardEntity(
            coordenate: Coordenate(4, 3), piece: kraken, pieceOwnerId: 'test'),
        const BoardEntity(
            coordenate: Coordenate(5, 5), piece: hermes, pieceOwnerId: 'test'),
        const BoardEntity(
            coordenate: Coordenate(2, 3), piece: phoenix, pieceOwnerId: 'test'),
      ];
      final afterList = source.getEntitiesInTheBoard();
      expect(afterList.asRightResult, expectedAfterList);
    });
  });
}

const fakeField = [
  //
  Coordenate(1, 1),
  Coordenate(1, 2),
  Coordenate(1, 3),
  Coordenate(1, 4),
  Coordenate(1, 5),
  Coordenate(1, 6),
  Coordenate(1, 7),
  Coordenate(1, 8),

  //
  Coordenate(2, 1),
  Coordenate(2, 2),
  Coordenate(2, 3),
  Coordenate(2, 4),
  Coordenate(2, 5),
  Coordenate(2, 6),
  Coordenate(2, 7),
  Coordenate(2, 8),

  //
  Coordenate(3, 1),
  Coordenate(3, 2),
  Coordenate(3, 3),
  Coordenate(3, 4),
  Coordenate(3, 5),
  Coordenate(3, 6),
  Coordenate(3, 7),
  Coordenate(3, 8),

  //
  Coordenate(4, 1),
  Coordenate(4, 2),
  Coordenate(4, 3),
  Coordenate(4, 4),
  Coordenate(4, 5),
  Coordenate(4, 6),
  Coordenate(4, 7),
  Coordenate(4, 8),

  //
  Coordenate(5, 1),
  Coordenate(5, 2),
  Coordenate(5, 3),
  Coordenate(5, 4),
  Coordenate(5, 5),
  Coordenate(5, 6),
  Coordenate(5, 7),
  Coordenate(5, 8),

  //
  Coordenate(6, 1),
  Coordenate(6, 2),
  Coordenate(6, 3),
  Coordenate(6, 4),
  Coordenate(6, 5),
  Coordenate(6, 6),
  Coordenate(6, 7),
  Coordenate(6, 8),

  //
  Coordenate(7, 1),
  Coordenate(7, 2),
  Coordenate(7, 3),
  Coordenate(7, 4),
  Coordenate(7, 5),
  Coordenate(7, 6),
  Coordenate(7, 7),
  Coordenate(7, 8),

  //
  Coordenate(8, 1),
  Coordenate(8, 2),
  Coordenate(8, 3),
  Coordenate(8, 4),
  Coordenate(8, 5),
  Coordenate(8, 6),
  Coordenate(8, 7),
  Coordenate(8, 8),
];
