part of 'collection_pieces.dart';

enum Move {
  twoTileAnyDirection(cordenates: _twoTileAnyDirection),
  oneTileAnyDirection(cordenates: _oneTileAnyDirection),
  horseMovement(cordenates: _horseMovement),
  twoTileDiagonals(cordenates: _twoTileDiagonals),
  oneTileDiagonals(cordenates: _oneTileDiagonals),
  twoTileUPDL(cordenates: _twoTileURDL),
  oneTileUPDL(cordenates: _oneTileUPDL);

  final List<Coordenate> cordenates;
  const Move({required this.cordenates});
}

const List<Coordenate> _horseMovement = [
  Coordenate(2, -1), // 'UUL'
  Coordenate(2, 1), // 'UUR'
  Coordenate(-2, -1), // 'DDL'
  Coordenate(-2, 1), // 'DDR'
  Coordenate(-1, 2), // 'DRR'
  Coordenate(1, 2), // 'URR'
  Coordenate(-1, -2), // 'DLL'
  Coordenate(1, -2), // 'ULL'
];

const List<Coordenate> _oneTileDiagonals = [
  Coordenate(1, -1), // 'UL'
  Coordenate(1, 1), // 'UR'
  Coordenate(-1, -1), // 'DL'
  Coordenate(-1, 1), // 'DR'
];

const List<Coordenate> _twoTileDiagonals = [
  Coordenate(2, -2), // 'UULL'
  Coordenate(2, 2), // 'UURR'
  Coordenate(-2, -2), // 'DDLL'
  Coordenate(-2, 2), // 'DDRR'
];

const List<Coordenate> _twoTileURDL = [
  Coordenate(2, 0), // 'UU'
  Coordenate(-2, 0), // 'DD'
  Coordenate(0, -2), // 'LL'
  Coordenate(0, 2), // 'RR'
];

const List<Coordenate> _oneTileUPDL = [
  Coordenate(1, 0), // 'U'
  Coordenate(-1, 0), // 'D'
  Coordenate(0, -1), // 'L'
  Coordenate(0, 1), // 'R'
];

const List<Coordenate> _oneTileAnyDirection = [
  Coordenate(1, 0), // 'U'
  Coordenate(-1, 0), // 'D'
  Coordenate(0, 1), // 'R'
  Coordenate(0, -1), // 'L'
  Coordenate(1, -1), // 'UL'
  Coordenate(-1, 1), // 'DR'
  Coordenate(1, 1), // 'UR'
  Coordenate(-1, -1), // 'DL'
];

const List<Coordenate> _twoTileAnyDirection = [
  ..._horseMovement,
  ..._twoTileDiagonals,
  ..._twoTileURDL,
];
