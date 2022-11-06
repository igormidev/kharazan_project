import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/data/dto/piece_dto.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/deal_damage_to_piece_usecase/impl_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/deal_damage_to_piece_usecase/param_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/failure_mocks.dart';
import '../../../../helpers/mock_piece.dart';

class MockProtocolBoardRepository extends Mock
    implements ProtocolBoardRepository {}

void main() {
  setUpAll(() {
    registerFallbackValue(const Coordenate(3, 3));
  });

  late ProtocolBoardRepository repository;
  late ImplDealDamageToPieceUsecase usecase;
  late DealDamageToPieceParam param;
  const coordenate = Coordenate(3, 3);
  setUp(() {
    repository = MockProtocolBoardRepository();
    usecase = ImplDealDamageToPieceUsecase(boardRepository: repository);
    param = const DealDamageToPieceParam(coordenates: coordenate, damage: 1);
  });

  group('Shold deal damage to a piece', () {
    test('Should use the coordenate in the param model when updating a piece',
        () async {
      when(() => repository.updatePieceInCoordenate(any(), any()))
          .thenReturn(right(fakePiece));

      final response = await usecase(param);

      expect(response.isRight(), equals(true));
      expect(response.asRightResult, isA<bool>());
      verify(() => repository.updatePieceInCoordenate(any(), any())).called(1);
    });

    test('Should deal damage to a piece and call the repository', () async {
      when(() => repository.updatePieceInCoordenate(coordenate, any()))
          .thenReturn(right(fakePiece));

      await usecase(param);
      verify(() => repository.updatePieceInCoordenate(coordenate, any()))
          .called(1);
    });

    test(
        'Should return false when the piece that recives the damage dosent die',
        () async {
      when(() => repository.updatePieceInCoordenate(any(), any()))
          // the piece have 3 of life
          .thenReturn(right(fakePiece.copyWith(life: 3)));
      // he will recive 1 of damage, less then the life, i.e. it was not a fatal blow
      param = const DealDamageToPieceParam(coordenates: coordenate, damage: 1);

      final response = await usecase(param);

      expect(response.asRightResult, false);
    });

    test('Should return true when the piece that recives the damage die',
        () async {
      when(() => repository.updatePieceInCoordenate(any(), any()))
          // the piece has less then 1 of life, so it was a fatal damage
          .thenReturn(right(fakePiece.copyWith(life: -1)));

      final response = await usecase(param);
      expect(response.asRightResult, true);
    });

    test(
      'Should return the piece with less one of lif '
      'without changing any other atribute of the class',
      () async {
        final pieceMockLife = fakePiece.life;
        final piece = usecase.returnPieceWithDamageTaken(fakePiece, 1);
        // The piece was to be the same as the other, with the only atribute
        // diferent beeing the life that was subtraded by 1
        expect(piece, fakePiece.copyWith(life: pieceMockLife - 1));
      },
    );
  });

  group('Should manege the errors', () {
    test('Should return the same error when the repository returns a error',
        () async {
      when(() => repository.updatePieceInCoordenate(any(), any()))
          .thenReturn(left(MockMatchFailure()));

      final response = await usecase(param);

      expect(response.isLeft(), equals(true));
      expect(response.asLeftResult, isA<MockMatchFailure>());
    });
  });
}
