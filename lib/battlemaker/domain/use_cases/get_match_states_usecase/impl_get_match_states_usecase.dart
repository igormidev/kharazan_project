import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_match_state_repository.dart';
import 'protocol_get_match_states_usecase.dart';
import 'return_get_match_states_usecase.dart';

class ImplGetMatchStatesUsecase implements ProtocolGetMatchStatesUsecase {
  final ProtocolMatchStateRepository _matchRepository;
  final ProtocolBoardRepository _boardRepository;

  const ImplGetMatchStatesUsecase({
    required ProtocolBoardRepository boardRepository,
    required ProtocolMatchStateRepository matchRepository,
  })  : _boardRepository = boardRepository,
        _matchRepository = matchRepository;

  @override
  Either<MatchFailure, ReturnGetMatchStatesUsecase> call() {
    final entitiesResponse = _boardRepository.obtainEntitiesInTheBoard();
    if (entitiesResponse.isLeft()) return entitiesResponse.asLeft();
    final entitiesInTheGame = entitiesResponse.asRightResult;

    final usersResponse = _matchRepository.getStateOfUsersOfMatch();
    if (usersResponse.isLeft()) return usersResponse.asLeft();
    final usersInTheGame = usersResponse.asRightResult;

    final returnModel = ReturnGetMatchStatesUsecase(
      boardState: entitiesInTheGame,
      usersInTheMatchState: usersInTheGame,
    );

    return right(returnModel);
  }
}
