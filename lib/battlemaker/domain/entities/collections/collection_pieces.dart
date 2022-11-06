import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';

part 'collection_movements.dart';

const PieceEntity medusa = PieceEntity(
  uid: 1,
  name: 'Medusa',
  description: '',
  cost: 4,
  life: 3,
  damage: 1,
  attackArea: <Move>[Move.oneTileUPDL, Move.twoTileUPDL],
  moveArea: <Move>[Move.oneTileAnyDirection],
);

const PieceEntity pegasus = PieceEntity(
  uid: 2,
  name: 'Pegasus',
  description: descriptionPlaceHolder,
  cost: 3,
  life: 3,
  damage: 1,
  attackArea: <Move>[Move.oneTileUPDL, Move.twoTileUPDL],
  moveArea: <Move>[Move.oneTileAnyDirection, Move.horseMovement],
);

const PieceEntity kraken = PieceEntity(
  uid: 3,
  name: 'Kraken',
  description: descriptionPlaceHolder,
  cost: 6,
  life: 5,
  damage: 4,
  attackArea: <Move>[Move.oneTileDiagonals],
  moveArea: <Move>[Move.twoTileDiagonals],
);

const PieceEntity hermes = PieceEntity(
  uid: 4,
  name: 'Hermes',
  description: descriptionPlaceHolder,
  cost: 3,
  life: 2,
  damage: 2,
  attackArea: <Move>[Move.oneTileAnyDirection],
  moveArea: <Move>[Move.oneTileAnyDirection, Move.twoTileAnyDirection],
);

const PieceEntity phoenix = PieceEntity(
  uid: 5,
  name: 'Phoenix',
  description: descriptionPlaceHolder,
  cost: 5,
  life: 4,
  damage: 2,
  attackArea: <Move>[Move.oneTileUPDL, Move.twoTileUPDL],
  moveArea: <Move>[Move.twoTileDiagonals],
);

const PieceEntity griffin = PieceEntity(
  uid: 6,
  name: 'Griffin',
  description: descriptionPlaceHolder,
  cost: 4,
  life: 6,
  damage: 2,
  attackArea: <Move>[Move.oneTileAnyDirection],
  moveArea: <Move>[Move.horseMovement, Move.twoTileDiagonals],
);

const String descriptionPlaceHolder = '''
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
''';
