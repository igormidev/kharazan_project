import 'package:flutter_test/flutter_test.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/collections/collection_pieces.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/data/dto/piece_dto.dart';
import '../../../helpers/mock_piece.dart';

void main() {
  const coordinate = Coordenate(0, 0);

  group('Getters must perfome as expected', () {
    test('Must return the image with the correct path', () {
      final whiteImage = fakePiece.whiteDisplayImage;
      final blackImage = fakePiece.blackDisplayImage;
      // Note: piece name has to be lowercase
      expect(whiteImage, equals('assets/pieces/medusa_white.png'));
      expect(blackImage, equals('assets/pieces/medusa_black.png'));
    });

    test('Should correctly inform if a part is alive or not', () {
      final pieceThatIsAlive = fakePiece.copyWith(life: 2);
      final pieceThatIsDeadWithNoLife = fakePiece.copyWith(life: 0);
      final pieceThatIsDeadWithNegativeLife = fakePiece.copyWith(life: -2);

      expect(pieceThatIsAlive.pieceIsAlive, equals(true));
      expect(pieceThatIsDeadWithNoLife.pieceIsAlive, equals(false));
      expect(pieceThatIsDeadWithNegativeLife.pieceIsAlive, equals(false));
    });
  });

  group('Should obtain the correct attacking moves for each possible move', () {
    /// Expected movement pattern:
    /// (-2,  2) (-1,  2) (0,  2) (1,  2) (2,  2)
    /// (-2,  1)                          (2,  1)
    /// (-2,  0)                          (2,  0)
    /// (-2, -1)                          (2, -1)
    /// (-2, -2) (-1, -2) (0, -2) (1, -2) (2, -2)
    test(
        'Must return the correct pattern when '
        'macking the attacking twoTileAnyDirection move', () {
      final piece = fakePiece.copyWith(attackArea: [Move.twoTileAnyDirection]);
      final pieceAttackMoves = piece.obtainAttackArea(coordinate);

      final expectedPieces = <Coordenate>[
        // Column -2
        const Coordenate(-2, 2),
        const Coordenate(-2, 1),
        const Coordenate(-2, 0),
        const Coordenate(-2, -1),
        const Coordenate(-2, -2),

        // Column -1
        const Coordenate(-1, 2),
        const Coordenate(-1, -2),

        // Column 0
        const Coordenate(0, 2),
        const Coordenate(0, -2),

        // Column 1
        const Coordenate(1, 2),
        const Coordenate(1, -2),

        // Column 2
        const Coordenate(2, 2),
        const Coordenate(2, 1),
        const Coordenate(2, 0),
        const Coordenate(2, -1),
        const Coordenate(2, -2),
      ];

      pieceAttackMoves.sort(_compareCoordenate);
      expectedPieces.sort(_compareCoordenate);
      expect(pieceAttackMoves, expectedPieces);
    });

    /// Expected movement pattern:
    /// (-1,  1) (0,  1) (1,  1)
    /// (-1,  0)         (1,  0)
    /// (-1, -1) (0, -1) (1, -1)
    test(
        'Must return the correct pattern when '
        'macking the attacking oneTileAnyDirection move', () {
      final piece = fakePiece.copyWith(attackArea: [Move.oneTileAnyDirection]);
      final pieceAttackMoves = piece.obtainAttackArea(coordinate);

      final expectedPieces = <Coordenate>[
        // Column -1
        const Coordenate(-1, 1),
        const Coordenate(-1, 0),
        const Coordenate(-1, -1),

        // Column 0
        const Coordenate(0, 1),
        const Coordenate(0, -1),

        // Column 1
        const Coordenate(1, 1),
        const Coordenate(1, 0),
        const Coordenate(1, -1),
      ];

      pieceAttackMoves.sort(_compareCoordenate);
      expectedPieces.sort(_compareCoordenate);
      expect(pieceAttackMoves, expectedPieces);
    });

    /// Expected movement pattern:
    ///          (-1,  2)         (1,  2)
    /// (-2,  1)                          (2,  1)
    ///
    /// (-2, -1)                          (2, -1)
    ///          (-1, -2)         (1, -2)
    test(
        'Must return the correct pattern when '
        'macking the attacking horseMovement move', () {
      final piece = fakePiece.copyWith(attackArea: [Move.horseMovement]);
      final pieceAttackMoves = piece.obtainAttackArea(coordinate);

      final expectedPieces = <Coordenate>[
        // Column -2
        const Coordenate(-2, 1),
        const Coordenate(-2, -1),

        // Column -1
        const Coordenate(-1, 2),
        const Coordenate(-1, -2),

        // Column 1
        const Coordenate(1, 2),
        const Coordenate(1, -2),

        // Column 2
        const Coordenate(2, 1),
        const Coordenate(2, -1),
      ];

      pieceAttackMoves.sort(_compareCoordenate);
      expectedPieces.sort(_compareCoordenate);
      expect(pieceAttackMoves, expectedPieces);
    });

    /// Expected movement pattern:
    /// (-2,  2)                          (2,  2)
    ///
    ///
    ///
    /// (-2, -2)                          (2, -2)
    test(
        'Must return the correct pattern when '
        'macking the attacking twoTileDiagonals move', () {
      final piece = fakePiece.copyWith(attackArea: [Move.twoTileDiagonals]);
      final pieceAttackMoves = piece.obtainAttackArea(coordinate);

      final expectedPieces = <Coordenate>[
        // Column -2
        const Coordenate(-2, 2),
        const Coordenate(-2, -2),

        // Column 2
        const Coordenate(2, 2),
        const Coordenate(2, -2),
      ];

      pieceAttackMoves.sort(_compareCoordenate);
      expectedPieces.sort(_compareCoordenate);
      expect(pieceAttackMoves, expectedPieces);
    });

    /// Expected movement pattern:
    /// (-1,  1)         (1,  1)
    ///
    /// (-1, -1)         (1, -1)
    test(
        'Must return the correct pattern when '
        'macking the attacking oneTileDiagonals move', () {
      final piece = fakePiece.copyWith(attackArea: [Move.oneTileDiagonals]);
      final pieceAttackMoves = piece.obtainAttackArea(coordinate);

      final expectedPieces = <Coordenate>[
        // Column -1
        const Coordenate(-1, 1),
        const Coordenate(-1, -1),

        // Column 1
        const Coordenate(1, 1),
        const Coordenate(1, -1),
      ];

      pieceAttackMoves.sort(_compareCoordenate);
      expectedPieces.sort(_compareCoordenate);
      expect(pieceAttackMoves, expectedPieces);
    });

    /// Expected movement pattern:
    ///                   (0,  2)
    ///
    /// (-2,  0)                          (2,  0)
    ///
    ///                   (0, -2)
    test(
        'Must return the correct pattern when '
        'macking the attacking twoTileUPDL move', () {
      final piece = fakePiece.copyWith(attackArea: [Move.twoTileUPDL]);
      final pieceAttackMoves = piece.obtainAttackArea(coordinate);

      final expectedPieces = <Coordenate>[
        // Column -2
        const Coordenate(-2, 0),

        // Column 0
        const Coordenate(0, 2),
        const Coordenate(0, -2),

        // Column 2
        const Coordenate(2, 0),
      ];

      pieceAttackMoves.sort(_compareCoordenate);
      expectedPieces.sort(_compareCoordenate);
      expect(pieceAttackMoves, expectedPieces);
    });

    /// Expected movement pattern:
    ///          (0,  1)
    /// (-1,  0)         (1,  0)
    ///          (0, -1)
    test(
        'Must return the correct pattern when '
        'macking the attacking oneTileUPDL move', () {
      final piece = fakePiece.copyWith(attackArea: [Move.oneTileUPDL]);
      final pieceAttackMoves = piece.obtainAttackArea(coordinate);

      final expectedPieces = <Coordenate>[
        // Column -1
        const Coordenate(-1, 0),

        // Column 0
        const Coordenate(0, 1),
        const Coordenate(0, -1),

        // Column 1
        const Coordenate(1, 0),
      ];

      pieceAttackMoves.sort(_compareCoordenate);
      expectedPieces.sort(_compareCoordenate);
      expect(pieceAttackMoves, expectedPieces);
    });
  });

  group('Should obtain the correct movementation moves for each possible move',
      () {
    /// Expected movement pattern:
    /// (-2,  2) (-1,  2) (0,  2) (1,  2) (2,  2)
    /// (-2,  1)                          (2,  1)
    /// (-2,  0)                          (2,  0)
    /// (-2, -1)                          (2, -1)
    /// (-2, -2) (-1, -2) (0, -2) (1, -2) (2, -2)
    test(
        'Must return the correct pattern when '
        'macking the movement twoTileAnyDirection move', () {
      final piece = fakePiece.copyWith(moveArea: [Move.twoTileAnyDirection]);
      final pieceMovimentation = piece.obtainMovesArea(coordinate);

      final expectedPieces = <Coordenate>[
        // Column -2
        const Coordenate(-2, 2),
        const Coordenate(-2, 1),
        const Coordenate(-2, 0),
        const Coordenate(-2, -1),
        const Coordenate(-2, -2),

        // Column -1
        const Coordenate(-1, 2),
        const Coordenate(-1, -2),

        // Column 0
        const Coordenate(0, 2),
        const Coordenate(0, -2),

        // Column 1
        const Coordenate(1, 2),
        const Coordenate(1, -2),

        // Column 2
        const Coordenate(2, 2),
        const Coordenate(2, 1),
        const Coordenate(2, 0),
        const Coordenate(2, -1),
        const Coordenate(2, -2),
      ];

      pieceMovimentation.sort(_compareCoordenate);
      expectedPieces.sort(_compareCoordenate);
      expect(pieceMovimentation, expectedPieces);
    });

    /// Expected movement pattern:
    /// (-1,  1) (0,  1) (1,  1)
    /// (-1,  0)         (1,  0)
    /// (-1, -1) (0, -1) (1, -1)
    test(
        'Must return the correct pattern when '
        'macking the movement oneTileAnyDirection move', () {
      final piece = fakePiece.copyWith(moveArea: [Move.oneTileAnyDirection]);
      final pieceMovimentation = piece.obtainMovesArea(coordinate);

      final expectedPieces = <Coordenate>[
        // Column -1
        const Coordenate(-1, 1),
        const Coordenate(-1, 0),
        const Coordenate(-1, -1),

        // Column 0
        const Coordenate(0, 1),
        const Coordenate(0, -1),

        // Column 1
        const Coordenate(1, 1),
        const Coordenate(1, 0),
        const Coordenate(1, -1),
      ];

      pieceMovimentation.sort(_compareCoordenate);
      expectedPieces.sort(_compareCoordenate);
      expect(pieceMovimentation, expectedPieces);
    });

    /// Expected movement pattern:
    ///          (-1,  2)         (1,  2)
    /// (-2,  1)                          (2,  1)
    ///
    /// (-2, -1)                          (2, -1)
    ///          (-1, -2)         (1, -2)
    test(
        'Must return the correct pattern when '
        'macking the movement horseMovement move', () {
      final piece = fakePiece.copyWith(moveArea: [Move.horseMovement]);
      final pieceMovimentation = piece.obtainMovesArea(coordinate);

      final expectedPieces = <Coordenate>[
        // Column -2
        const Coordenate(-2, 1),
        const Coordenate(-2, -1),

        // Column -1
        const Coordenate(-1, 2),
        const Coordenate(-1, -2),

        // Column 1
        const Coordenate(1, 2),
        const Coordenate(1, -2),

        // Column 2
        const Coordenate(2, 1),
        const Coordenate(2, -1),
      ];

      pieceMovimentation.sort(_compareCoordenate);
      expectedPieces.sort(_compareCoordenate);
      expect(pieceMovimentation, expectedPieces);
    });

    /// Expected movement pattern:
    /// (-2,  2)                          (2,  2)
    ///
    ///
    ///
    /// (-2, -2)                          (2, -2)
    test(
        'Must return the correct pattern when '
        'macking the movement twoTileDiagonals move', () {
      final piece = fakePiece.copyWith(moveArea: [Move.twoTileDiagonals]);
      final pieceMovimentation = piece.obtainMovesArea(coordinate);

      final expectedPieces = <Coordenate>[
        // Column -2
        const Coordenate(-2, 2),
        const Coordenate(-2, -2),

        // Column 2
        const Coordenate(2, 2),
        const Coordenate(2, -2),
      ];

      pieceMovimentation.sort(_compareCoordenate);
      expectedPieces.sort(_compareCoordenate);
      expect(pieceMovimentation, expectedPieces);
    });

    /// Expected movement pattern:
    /// (-1,  1)         (1,  1)
    ///
    /// (-1, -1)         (1, -1)
    test(
        'Must return the correct pattern when '
        'macking the movement oneTileDiagonals move', () {
      final piece = fakePiece.copyWith(moveArea: [Move.oneTileDiagonals]);
      final pieceMovimentation = piece.obtainMovesArea(coordinate);

      final expectedPieces = <Coordenate>[
        // Column -1
        const Coordenate(-1, 1),
        const Coordenate(-1, -1),

        // Column 1
        const Coordenate(1, 1),
        const Coordenate(1, -1),
      ];

      pieceMovimentation.sort(_compareCoordenate);
      expectedPieces.sort(_compareCoordenate);
      expect(pieceMovimentation, expectedPieces);
    });

    /// Expected movement pattern:
    ///                   (0,  2)
    ///
    /// (-2,  0)                          (2,  0)
    ///
    ///                   (0, -2)
    test(
        'Must return the correct pattern when '
        'macking the movement twoTileUPDL move', () {
      final piece = fakePiece.copyWith(moveArea: [Move.twoTileUPDL]);
      final pieceMovimentation = piece.obtainMovesArea(coordinate);

      final expectedPieces = <Coordenate>[
        // Column -2
        const Coordenate(-2, 0),

        // Column 0
        const Coordenate(0, 2),
        const Coordenate(0, -2),

        // Column 2
        const Coordenate(2, 0),
      ];

      pieceMovimentation.sort(_compareCoordenate);
      expectedPieces.sort(_compareCoordenate);
      expect(pieceMovimentation, expectedPieces);
    });

    /// Expected movement pattern:
    ///          (0,  1)
    /// (-1,  0)         (1,  0)
    ///          (0, -1)
    test(
        'Must return the correct pattern when '
        'macking the movement oneTileUPDL move', () {
      final piece = fakePiece.copyWith(moveArea: [Move.oneTileUPDL]);
      final pieceMovimentation = piece.obtainMovesArea(coordinate);

      final expectedPieces = <Coordenate>[
        // Column -1
        const Coordenate(-1, 0),

        // Column 0
        const Coordenate(0, 1),
        const Coordenate(0, -1),

        // Column 1
        const Coordenate(1, 0),
      ];

      pieceMovimentation.sort(_compareCoordenate);
      expectedPieces.sort(_compareCoordenate);
      expect(pieceMovimentation, expectedPieces);
    });
  });
}

int Function(Coordenate, Coordenate)? _compareCoordenate = (c0, c1) {
  if (c0.axisX != c1.axisX) return c0.axisX.compareTo(c1.axisX);
  return c0.axisY.compareTo(c1.axisY);
};
