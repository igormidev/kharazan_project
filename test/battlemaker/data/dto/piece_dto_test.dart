import 'package:flutter_test/flutter_test.dart';
import 'package:micro_kharazan/battlemaker/data/dto/piece_dto.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/collections/collection_pieces.dart';

void main() {
  test('Should update the user piece returning a copy', () {
    const originalPiece = PieceEntity(
      uid: 1,
      name: 'Medusa',
      description: 'Lorem',
      moveArea: [Move.twoTileAnyDirection],
      attackArea: [Move.horseMovement],
      cost: 3,
      life: 4,
      damage: 3,
    );

    final resultPiece = originalPiece.copyWith(
      moveArea: [Move.oneTileAnyDirection],
      attackArea: [Move.oneTileUPDL],
      cost: 9,
      life: 9,
      damage: 9,
    );

    const expectedPiece = PieceEntity(
      uid: 1,
      name: 'Medusa',
      description: 'Lorem',
      moveArea: [Move.oneTileAnyDirection],
      attackArea: [Move.oneTileUPDL],
      cost: 9,
      life: 9,
      damage: 9,
    );

    expect(resultPiece, equals(expectedPiece));
  });
}
