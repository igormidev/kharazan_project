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
    piece: medusa,
    pieceOwnerId: 'user1',
  ),
];
