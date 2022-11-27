import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/protocol_get_piece_valid_moves_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

void main() {
  group('Should limit the coordenates', () {
    test('Should have all coordenates inside the limit of field', () {
      /// All fields have to be valid
      final movements = onlyValidCoordenates;
      final validMoves = getCoordenatesInsideLimits(fieldLimit, movements);
      expect(validMoves, movements);
    });

    test('Should remove all fields because no of them are valid fields', () {
      // All invalid fields with one of axis that dosen't exists in the field
      final movements = onlyInvalidCoordenates;
      final validMoves = getCoordenatesInsideLimits(fieldLimit, movements);
      expect(validMoves, isEmpty);
    });

    test('Should remove the fields that are out of the field limit', () {
      final movements = [...onlyValidCoordenates, ...onlyInvalidCoordenates];
      final validMoves = getCoordenatesInsideLimits(fieldLimit, movements);

      // Have to remove invalid moves, and retain only the valid moves
      expect(validMoves, onlyValidCoordenates);
    });

    test('Should return a empty list if limits list is empty', () {
      final emptyList = getCoordenatesInsideLimits([], onlyValidCoordenates);
      expect(emptyList, isEmpty);
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
final List<Coordenate> fieldLimit = [
  const Coordenate(-2, 2),
  const Coordenate(-2, 1),
  const Coordenate(-2, 0),
  const Coordenate(-2, -1),
  const Coordenate(-2, -2),
  const Coordenate(-1, 2),
  const Coordenate(-1, 1),
  const Coordenate(-1, 0),
  const Coordenate(-1, -1),
  const Coordenate(-1, -2),
  const Coordenate(0, 2),
  const Coordenate(0, 1),
  const Coordenate(0, 0),
  const Coordenate(0, -1),
  const Coordenate(0, -2),
  const Coordenate(1, 2),
  const Coordenate(1, 1),
  const Coordenate(1, 0),
  const Coordenate(1, -1),
  const Coordenate(1, -2),
  const Coordenate(2, 2),
  const Coordenate(2, 1),
  const Coordenate(2, 0),
  const Coordenate(2, -1),
  const Coordenate(2, -2),
];

/// Invalid coordenates
final List<Coordenate> onlyInvalidCoordenates = [
  const Coordenate(3, 0), // 3 dosen't exist
  const Coordenate(0, 3), // 3 dosen't exist
  const Coordenate(-3, 0), // -3 dosen't exist
  const Coordenate(0, -3), // -3 dosen't exist

  const Coordenate(3, 3), // 3 dosen't exist
  const Coordenate(-3, -3), // -3 dosen't exist
  const Coordenate(-3, 3), // -3 and 3 dosen't exist
  const Coordenate(-3, 3), // -3 and 3 dosen't exist
  const Coordenate(3, -3), // -3 and 3 dosen't exist
];

/// Valid coordenates
final List<Coordenate> onlyValidCoordenates = [
  const Coordenate(-1, 1),
  const Coordenate(0, 1),
  const Coordenate(1, 1),
  const Coordenate(-1, 0),
  const Coordenate(0, 0),
  const Coordenate(1, 0),
  const Coordenate(-1, -1),
  const Coordenate(0, 1),
  const Coordenate(1, -1),
];
