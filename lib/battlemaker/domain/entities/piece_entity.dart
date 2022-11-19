import 'coordenate_entity.dart';
import 'package:equatable/equatable.dart';
import 'collections/collection_pieces.dart';

class PieceEntity extends Equatable {
  const PieceEntity({
    required this.uid,
    required this.name,
    required this.description,
    required List<Move> attackArea,
    required List<Move> moveArea,
    required this.cost,
    required this.life,
    required this.damage,
  })  : _attackArea = attackArea,
        _moveArea = moveArea;

  final int uid;
  final String name;
  final String description;
  final List<Move> _attackArea;
  final List<Move> _moveArea;
  final int cost;
  final int life;
  final int damage;

  bool get pieceIsAlive => life > 0;
  List<Move> get attackArea => _attackArea;
  List<Move> get moveArea => _moveArea;
  String get whiteDisplayImage =>
      'assets/pieces/${name.toLowerCase()}_white.png';
  String get blackDisplayImage =>
      'assets/pieces/${name.toLowerCase()}_black.png';

  List<Coordenate> obtainMovesArea(Coordenate refCoordenate) =>
      _obtainPossibleMovesByReferenceCoordenate(refCoordenate, moveArea);

  List<Coordenate> obtainAttackArea(Coordenate refCoordenate) =>
      _obtainPossibleMovesByReferenceCoordenate(refCoordenate, attackArea);

  @override
  String toString() =>
      'PieceEntity(uid: $uid, name: $name, cost: $cost, life: $life, damage: $damage, description: $description)';

  @override
  List<Object> get props {
    return [
      uid,
      name,
      whiteDisplayImage,
      blackDisplayImage,
      description,
      cost,
      life,
      damage,
    ];
  }

  List<Coordenate> _obtainPossibleMovesByReferenceCoordenate(
    Coordenate refCoordenate,
    List<Move> listCoordenates,
  ) {
    final coordenates = <Coordenate>[];
    for (var moves in listCoordenates) {
      for (var move in moves.cordenates) {
        final coordenate = Coordenate(
          refCoordenate.axisX + move.axisX,
          refCoordenate.axisY + move.axisY,
        );
        coordenates.add(coordenate);
      }
    }
    return coordenates;
  }
}
