import 'package:micro_kharazan/battle_ui/domain/entities/animation_type.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/collections/collection_pieces.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

final mockEntities = <AnimationTypeEntity>[
  AnimationTypeEntity.piece(
    uniqueId: 'random1',
    entity: const BoardEntity(
      coordenate: Coordenate(4, 4),
      piece: medusa,
      pieceOwnerId: 'user1',
    ),
  ),
  AnimationTypeEntity.piece(
    uniqueId: 'random2',
    entity: const BoardEntity(
      coordenate: Coordenate(5, 4),
      piece: griffin,
      pieceOwnerId: 'user1',
    ),
  ),
  AnimationTypeEntity.piece(
    uniqueId: 'random3',
    entity: const BoardEntity(
      coordenate: Coordenate(2, 3),
      piece: phoenix,
      pieceOwnerId: 'user1',
    ),
  ),
  AnimationTypeEntity.piece(
    uniqueId: 'random4',
    entity: const BoardEntity(
      coordenate: Coordenate(5, 3),
      piece: pegasus,
      pieceOwnerId: 'user1',
    ),
  ),
  AnimationTypeEntity.piece(
    uniqueId: 'random5',
    entity: const BoardEntity(
      coordenate: Coordenate(1, 1),
      piece: kraken,
      pieceOwnerId: 'user2',
    ),
  ),
  AnimationTypeEntity.piece(
    uniqueId: 'random6',
    entity: const BoardEntity(
      coordenate: Coordenate(6, 4),
      piece: kraken,
      pieceOwnerId: 'user2',
    ),
  ),
  AnimationTypeEntity.piece(
    uniqueId: 'random7',
    entity: const BoardEntity(
      coordenate: Coordenate(8, 8),
      piece: medusa,
      pieceOwnerId: 'user2',
    ),
  ),
  AnimationTypeEntity.piece(
    uniqueId: 'random8',
    entity: const BoardEntity(
      coordenate: Coordenate(6, 7),
      piece: hermes,
      pieceOwnerId: 'user2',
    ),
  ),
];
