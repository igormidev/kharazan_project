import 'package:flutter_test/flutter_test.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

void main() {
  group('Should get coordenates as expected', () {
    test('Should cast string to coordenate as expected', () {
      final coordenate = Coordenate.fromString('2 4');
      expect(coordenate, const Coordenate(2, 4));
    });

    test('Should throw a casting error when text lenght is diferent then 2',
        () {
      // Are not 2 caracteres
      final caractersThatCantPass = <String>['', '1', '123'];
      for (var caracter in caractersThatCantPass) {
        expect(
          () => Coordenate.fromString(caracter),
          throwsA(isA<CastingCoordenateError>()),
        );
      }
    });

    test('Should throw a casting error when cant cast caracters to int', () {
      // Cant cast number
      final caractersThatCantPass = <String>['ab', '1b', 'a2'];
      for (var caracter in caractersThatCantPass) {
        expect(
          () => Coordenate.fromString(caracter),
          throwsA(isA<CastingCoordenateError>()),
        );
      }
    });
  });
  group('Should cast string to origin/destiny coordenate as expected', () {
    test('Should obtain two coordenates', () {
      final coordenate = CoordenatesInMove.fromString('43 85');
      const originCoordenate = Coordenate(4, 3);
      const destinyCoordenate = Coordenate(8, 5);
      expect(
        coordenate,
        const CoordenatesInMove(
            origin: originCoordenate, destiny: destinyCoordenate),
      );
    });

    test('Should throw a casting error when lenght is different then 4', () {
      // Are not 2 caracteres
      final caractersThatCantPass = <String>['', '1', '22', '333', '55555'];
      for (var caracter in caractersThatCantPass) {
        expect(
          () => CoordenatesInMove.fromString(caracter),
          throwsA(isA<CastingCoordenateError>()),
        );
      }
    });
  });
}
