import 'package:flutter_test/flutter_test.dart';
import 'package:micro_kharazan/battlemaker/data/dto/user_state_dto.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';

void main() {
  test('Should update the user model returning a copy', () {
    const user = UserStateEntity(
        displayName: 'testName', currentMana: 10, playerId: 'abc');
    final resultPiece = user.copyWith(currentMana: 9);
    const expectedPiece = UserStateEntity(
        displayName: 'testName', currentMana: 9, playerId: 'abc');
    expect(resultPiece, equals(expectedPiece));
  });
}
