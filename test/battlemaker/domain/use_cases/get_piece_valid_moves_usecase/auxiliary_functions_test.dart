import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/protocol_get_piece_valid_moves_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

void main() {
  group('Should limit the coordenates', () {
    test(
      'Should return only the coordenates that '
      'are inside the limit of field',
      () {},
    );

    test('Should have all coordenates inside the limit of field', () {
      /// All fields have to be valid
      const movements = onlyValidCoordenates;
      final validMoves = getLeftJoinCoordenates(fieldLimit, movements);
      expect(validMoves, movements);
    });

    test('Should remove all fields because no of them are valid fields', () {
      // All invalid fields with one of axis that dosen't exists in the field
      const movements = onlyInvalidCoordenates;
      final validMoves = getLeftJoinCoordenates(fieldLimit, movements);
      expect(validMoves, isEmpty);
    });

    test('Should remove the fields that are out of the field limit', () {
      final movements = [...onlyValidCoordenates, ...onlyInvalidCoordenates];
      final validMoves = getLeftJoinCoordenates(fieldLimit, movements);

      // Have to remove invalid moves, and retain only the valid moves
      expect(validMoves, onlyValidCoordenates);
    });
  });
}

/// This is the "field" that will be used to test
///
/// (-2,  2) (-1,  2) (0,  2) (1,  2) (2,  2)
/// (-2,  1) (-1,  1) (0,  1) (1,  1) (2,  1)
/// (-2,  0) (-1,  0) (0,  0) (1,  0) (2,  0)
/// (-2, -1) (-1, -1) (0, -1) (1, -1) (2, -1)
/// (-2, -2) (-1, -2) (0, -2) (1, -2) (2, -2)
const List<Coordenate> fieldLimit = [
  Coordenate(-2, 2),
  Coordenate(-2, 1),
  Coordenate(-2, 0),
  Coordenate(-2, -1),
  Coordenate(-2, -2),
  Coordenate(-1, 2),
  Coordenate(-1, 1),
  Coordenate(-1, 0),
  Coordenate(-1, -1),
  Coordenate(-1, -2),
  Coordenate(0, 2),
  Coordenate(0, 1),
  Coordenate(0, 0),
  Coordenate(0, -1),
  Coordenate(0, -2),
  Coordenate(1, 2),
  Coordenate(1, 1),
  Coordenate(1, 0),
  Coordenate(1, -1),
  Coordenate(1, -2),
  Coordenate(2, 2),
  Coordenate(2, 1),
  Coordenate(2, 0),
  Coordenate(2, -1),
  Coordenate(2, -2),
];

/// Invalid coordenates
const List<Coordenate> onlyInvalidCoordenates = [
  Coordenate(3, 0), // 3 dosen't exist
  Coordenate(0, 3), // 3 dosen't exist
  Coordenate(-3, 0), // -3 dosen't exist
  Coordenate(0, -3), // -3 dosen't exist

  Coordenate(3, 3), // 3 dosen't exist
  Coordenate(-3, -3), // -3 dosen't exist
  Coordenate(-3, 3), // -3 and 3 dosen't exist
  Coordenate(-3, 3), // -3 and 3 dosen't exist
  Coordenate(3, -3), // -3 and 3 dosen't exist
];

/// Valid coordenates
const List<Coordenate> onlyValidCoordenates = [
  Coordenate(-1, 1),
  Coordenate(0, 1),
  Coordenate(1, 1),
  Coordenate(-1, 0),
  Coordenate(0, 0),
  Coordenate(1, 0),
  Coordenate(-1, -1),
  Coordenate(0, 1),
  Coordenate(1, -1),
];
