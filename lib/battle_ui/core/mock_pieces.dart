import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/collections/collection_pieces.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

const mockPieces = <BoardEntity>[
  BoardEntity(
    coordenate: Coordenate(4, 4),
    piece: medusa,
    pieceOwnerId: 'user1',
  ),
  BoardEntity(
    coordenate: Coordenate(5, 4),
    piece: griffin,
    pieceOwnerId: 'user1',
  ),
  BoardEntity(
    coordenate: Coordenate(2, 3),
    piece: phoenix,
    pieceOwnerId: 'user1',
  ),
  BoardEntity(
    coordenate: Coordenate(5, 2),
    piece: pegasus,
    pieceOwnerId: 'user1',
  ),
  BoardEntity(
    coordenate: Coordenate(1, 1),
    piece: kraken,
    pieceOwnerId: 'user2',
  ),
  BoardEntity(
    coordenate: Coordenate(6, 4),
    piece: kraken,
    pieceOwnerId: 'user2',
  ),
  BoardEntity(
    coordenate: Coordenate(8, 8),
    piece: medusa,
    pieceOwnerId: 'user2',
  ),
  BoardEntity(
    coordenate: Coordenate(6, 7),
    piece: hermes,
    pieceOwnerId: 'user2',
  ),
];
