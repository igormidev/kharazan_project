import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/collections/collection_pieces.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/return_get_match_states_usecase.dart';

const PieceEntity fakePiece = PieceEntity(
  uid: 1,
  name: 'Medusa',
  description: 'Lorem',
  moveArea: [Move.twoTileAnyDirection],
  attackArea: [Move.twoTileAnyDirection],
  cost: 3,
  life: 4,
  damage: 3,
);

const fakeBoardEntity = BoardEntity(
  coordenate: Coordenate(0, 0),
  piece: fakePiece,
  pieceOwnerId: 'test',
);

const fakeUserState =
    UserStateEntity(displayName: 'testName', playerId: 'test', currentMana: 4);

const fakeGetMatchStates = ReturnGetMatchStatesUsecase(
  boardState: [fakeBoardEntity],
  usersInTheMatchState: [fakeUserState],
);
