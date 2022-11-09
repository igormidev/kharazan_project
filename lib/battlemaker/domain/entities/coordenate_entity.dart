import 'package:equatable/equatable.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

class Coordenate extends Equatable {
  final int axisX;
  final int axisY;
  const Coordenate(this.axisX, this.axisY);

  @override
  String toString() => '(${axisX}x$axisY)';

  factory Coordenate.fromString(String text) {
    text = text.replaceAll(' ', '');
    if (text.length != 2) throw CastingCoordenateError();

    final xAxis = int.tryParse(text[0]);
    final yAxis = int.tryParse(text[1]);
    if (xAxis == null || yAxis == null) throw CastingCoordenateError();

    return Coordenate(xAxis, yAxis);
  }

  @override
  List<Object> get props => [axisX, axisY];
}

class CoordenatesInMove extends Equatable {
  final Coordenate origin;
  final Coordenate destiny;
  const CoordenatesInMove({required this.origin, required this.destiny});

  factory CoordenatesInMove.fromString(String text) {
    text = text.replaceAll(' ', '');
    if (text.length != 4) throw CastingCoordenateError();
    final origing = text[0] + text[1];
    final destiny = text[2] + text[3];
    return CoordenatesInMove(
      origin: Coordenate.fromString(origing),
      destiny: Coordenate.fromString(destiny),
    );
  }

  @override
  String toString() => 'CoordenatesInMove(origin: $origin, destiny: $destiny)';

  @override
  List<Object> get props => [origin, destiny];
}
