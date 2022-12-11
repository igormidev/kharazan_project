import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/states/piece_state.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/collections/collection_pieces.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

final mockEntities = <BoardFieldEntity>[
  const BoardFieldEntity.piece(
    uniqueBoardId: 'id1',
    coordenate: Coordenate(0, 3),
    pieceState: PieceState.normal(piece: medusa),
    pieceOwnerId: 'player1',
  ),
  const BoardFieldEntity.piece(
    uniqueBoardId: 'id2',
    coordenate: Coordenate(0, 3),
    pieceState: PieceState.normal(piece: pegasus),
    pieceOwnerId: 'player1',
  ),
  const BoardFieldEntity.piece(
    uniqueBoardId: 'id3',
    coordenate: Coordenate(0, 3),
    pieceState: PieceState.normal(piece: kraken),
    pieceOwnerId: 'player1',
  ),
  const BoardFieldEntity.piece(
    uniqueBoardId: 'id4',
    coordenate: Coordenate(0, 3),
    pieceState: PieceState.normal(piece: hermes),
    pieceOwnerId: 'player1',
  ),

  // PLAYER 2
  const BoardFieldEntity.piece(
    uniqueBoardId: 'id5',
    coordenate: Coordenate(0, 3),
    pieceState: PieceState.normal(piece: phoenix),
    pieceOwnerId: 'player2',
  ),
  const BoardFieldEntity.piece(
    uniqueBoardId: 'id6',
    coordenate: Coordenate(0, 3),
    pieceState: PieceState.normal(piece: griffin),
    pieceOwnerId: 'player2',
  ),
  const BoardFieldEntity.piece(
    uniqueBoardId: 'id7',
    coordenate: Coordenate(0, 3),
    pieceState: PieceState.normal(piece: pegasus),
    pieceOwnerId: 'player2',
  ),
  const BoardFieldEntity.piece(
    uniqueBoardId: 'id8',
    coordenate: Coordenate(0, 3),
    pieceState: PieceState.normal(piece: pegasus),
    pieceOwnerId: 'player2',
  ),
];
