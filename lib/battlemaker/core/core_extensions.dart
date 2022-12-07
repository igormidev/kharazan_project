import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/piece_entity.dart';

extension EitherExtension<L, R> on Either<L, R> {
  R get asRightResult => (this as Right<L, R>).value;
  L get asLeftResult => (this as Left<L, R>).value;

  Either<L, T> asLeft<T>() => left(asLeftResult);
  Either<T, R> asRight<T>() => right(asRightResult);

  Either<L, T> castRight<T>(T Function(R value) castFunc) =>
      fold((l) => left(l), (r) => right(castFunc(r)));

  Either<L, T> castRightList<T>(T Function(R value) castFunc) =>
      fold((l) => left(l), (r) => right(castFunc(r)));
}

extension CoordenatesListExtension on List<Coordenate> {
  int get biggerXInList =>
      reduce((curr, next) => curr.axisX > next.axisX ? curr : next).axisX;

  int get biggerYInList =>
      reduce((curr, next) => curr.axisY > next.axisY ? curr : next).axisY;

  int get minimalXInList =>
      reduce((curr, next) => curr.axisX < next.axisX ? curr : next).axisX;

  int get minimalYInList =>
      reduce((curr, next) => curr.axisY < next.axisY ? curr : next).axisY;
}

extension BoardListEntityExtensions on List<BoardPieceEntity> {
  List<PieceEntity> get piecesInBoard =>
      map((entity) => entity.pieceState.piece).toList();
  List<Coordenate> get coordenatesInBoard =>
      map((entity) => entity.coordenate).toList();
}
