import 'package:flutter_test/flutter_test.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/collections/collection_pieces.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

void main() {
  group('Confirm the data', () {
    test(
      'Need to have the expected list of coordenate in the horse movement',
      () {
        expect(Move.horseMovement.cordenates, const [
          Coordenate(2, -1), // 'UUL'
          Coordenate(2, 1), // 'UUR'
          Coordenate(-2, -1), // 'DDL'
          Coordenate(-2, 1), // 'DDR'
          Coordenate(-1, 2), // 'DRR'
          Coordenate(1, 2), // 'URR'
          Coordenate(-1, -2), // 'DLL'
          Coordenate(1, -2), // 'ULL'
        ]);
      },
    );

    test(
      'Need to have the expected list of coordenate '
      'that represets a one tile distance dialogs move',
      () {
        expect(Move.oneTileDiagonals.cordenates, const [
          Coordenate(1, -1), // 'UL'
          Coordenate(1, 1), // 'UR'
          Coordenate(-1, -1), // 'DL'
          Coordenate(-1, 1), // 'DR'
        ]);
      },
    );

    test(
      'Need to have the expected list of coordenate '
      'that represets a two tile distance dialogs move',
      () {
        expect(Move.twoTileDiagonals.cordenates, const [
          Coordenate(2, -2), // 'UULL'
          Coordenate(2, 2), // 'UURR'
          Coordenate(-2, -2), // 'DDLL'
          Coordenate(-2, 2), // 'DDRR'
        ]);
      },
    );

    test(
      'Need to have the expected list of coordenate '
      'that represets a two tile distance up, down, left and right move',
      () {
        expect(Move.twoTileUPDL.cordenates, const [
          Coordenate(2, 0), // 'UU'
          Coordenate(-2, 0), // 'DD'
          Coordenate(0, -2), // 'LL'
          Coordenate(0, 2), // 'RR'
        ]);
      },
    );

    test(
      'Need to have the expected list of coordenate '
      'that represets a one tile distance up, down, left and right move',
      () {
        expect(Move.oneTileUPDL.cordenates, const [
          Coordenate(1, 0), // 'U'
          Coordenate(-1, 0), // 'D'
          Coordenate(0, -1), // 'L'
          Coordenate(0, 1), // 'R'
        ]);
      },
    );

    test(
      'Need to have the expected list of coordenate '
      'that represets a one tile distance in all directions move',
      () {
        expect(Move.oneTileAnyDirection.cordenates, const [
          Coordenate(1, 0), // 'U'
          Coordenate(-1, 0), // 'D'
          Coordenate(0, 1), // 'R'
          Coordenate(0, -1), // 'L'
          Coordenate(1, -1), // 'UL'
          Coordenate(-1, 1), // 'DR'
          Coordenate(1, 1), // 'UR'
          Coordenate(-1, -1), // 'DL'
        ]);
      },
    );

    test(
        'Need to have the expected list of coordenate that'
        'represets a two tile distance in all directions move', () {
      expect(Move.twoTileAnyDirection.cordenates, const [
        // Horse movement
        Coordenate(2, -1), // 'UUL'
        Coordenate(2, 1), // 'UUR'
        Coordenate(-2, -1), // 'DDL'
        Coordenate(-2, 1), // 'DDR'
        Coordenate(-1, 2), // 'DRR'
        Coordenate(1, 2), // 'URR'
        Coordenate(-1, -2), // 'DLL'
        Coordenate(1, -2), // 'ULL'

        // Two tile dialogs
        Coordenate(2, -2), // 'UULL'
        Coordenate(2, 2), // 'UURR'
        Coordenate(-2, -2), // 'DDLL'
        Coordenate(-2, 2), // 'DDRR'

        // Two tile Up, Right, Down and Left
        Coordenate(2, 0), // 'UU'
        Coordenate(-2, 0), // 'DD'
        Coordenate(0, -2), // 'LL'
        Coordenate(0, 2), // 'RR'
      ]);
    });
  });
}
