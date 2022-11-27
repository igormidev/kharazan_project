import 'package:flutter_test/flutter_test.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

void main() {
  test('Should cast bigger x in the list', () {
    final biggetX = const [
      //          x  y
      Coordenate(0, 7),
      Coordenate(1, 8),
      Coordenate(2, 9),
      Coordenate(3, 10),
      Coordenate(4, 11),
      Coordenate(5, 12),
      Coordenate(6, 13), // Biggest x is 6
    ].biggerXInList;

    expect(biggetX, 6);
  });

  test('Should cast bigger y in the list', () {
    final biggetY = const [
      //          x  y
      Coordenate(0, 7),
      Coordenate(1, 8),
      Coordenate(2, 9),
      Coordenate(3, 10),
      Coordenate(4, 11),
      Coordenate(5, 12),
      Coordenate(6, 13), // Biggest y is 13
      Coordenate(14, 0),
    ].biggerYInList;

    expect(biggetY, 13);
  });

  test('Should cast smaller x in the list', () {
    final smallerX = const [
      //          x  y
      Coordenate(9, -1),
      Coordenate(0, 7), // Smallest x is 0
      Coordenate(1, 8),
      Coordenate(2, 9),
      Coordenate(3, 10),
      Coordenate(4, 11),
      Coordenate(5, 12),
      Coordenate(6, 13),
    ].minimalXInList;

    expect(smallerX, 0);
  });

  test('Should cast smaller y in the list', () {
    final smallerY = const [
      //          x  y
      Coordenate(0, 7), // Smallest y is 7
      Coordenate(1, 8),
      Coordenate(2, 9),
      Coordenate(3, 10),
      Coordenate(4, 11),
      Coordenate(5, 12),
      Coordenate(6, 13),
    ].minimalYInList;

    expect(smallerY, 7);
  });
}
