import 'package:micro_kharazan/battlemaker/domain/entities/animation_type.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/collections/collection_pieces.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

final mockEntities = <AnimationInField>[
  AnimationInField.piece(
    uniqueId: 'random1',
    entity: const OldBoardEntity(
      coordenate: Coordenate(4, 4),
      piece: medusa,
      pieceOwnerId: 'user1',
      uniqueId: 'random1',
    ),
  ),
  AnimationInField.piece(
    uniqueId: 'random2',
    entity: const OldBoardEntity(
      coordenate: Coordenate(5, 4),
      piece: griffin,
      pieceOwnerId: 'user1',
      uniqueId: 'random1',
    ),
  ),
  AnimationInField.piece(
    uniqueId: 'random3',
    entity: const OldBoardEntity(
      coordenate: Coordenate(2, 3),
      piece: phoenix,
      pieceOwnerId: 'user1',
      uniqueId: 'random1',
    ),
  ),
  AnimationInField.piece(
    uniqueId: 'random4',
    entity: const OldBoardEntity(
      coordenate: Coordenate(5, 3),
      piece: pegasus,
      pieceOwnerId: 'user1',
      uniqueId: 'random1',
    ),
  ),
  AnimationInField.piece(
    uniqueId: 'random5',
    entity: const OldBoardEntity(
      coordenate: Coordenate(1, 1),
      piece: kraken,
      pieceOwnerId: 'user2',
      uniqueId: 'random1',
    ),
  ),
  AnimationInField.piece(
    uniqueId: 'random6',
    entity: const OldBoardEntity(
      coordenate: Coordenate(6, 4),
      piece: kraken,
      pieceOwnerId: 'user2',
      uniqueId: 'random1',
    ),
  ),
  AnimationInField.piece(
    uniqueId: 'random7',
    entity: const OldBoardEntity(
      coordenate: Coordenate(8, 8),
      piece: medusa,
      pieceOwnerId: 'user2',
      uniqueId: 'random1',
    ),
  ),
  AnimationInField.piece(
    uniqueId: 'random8',
    entity: const OldBoardEntity(
      coordenate: Coordenate(6, 7),
      piece: hermes,
      pieceOwnerId: 'user2',
      uniqueId: 'random1',
    ),
  ),
];
