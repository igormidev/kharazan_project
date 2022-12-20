import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_match_state_repository.dart';
import 'param_can_user_make_move_usecase.dart';
import 'protocol_can_user_make_move_usecase.dart';

class ImplCanUserMakeMoveUsecase implements ProtocolCanUserMakeMoveUsecase {
  final ProtocolMatchStateRepository _matchStateRepository;

  const ImplCanUserMakeMoveUsecase({
    required ProtocolMatchStateRepository matchStateRepository,
  }) : _matchStateRepository = matchStateRepository;

  @override
  Either<MatchFailure, VoidSucess> call(ParamCanUserMakeMove param) {
    final neededManaToAttack = param.neededManaToMakeMove;
    final userId = param.userId;

    final userResponse = _matchStateRepository.getUserState(userId);
    if (userResponse.isLeft()) return left(userResponse.asLeftResult);

    // The user needs to have mana to make a move
    final userMana = userResponse.asRightResult.currentMana;
    final hasManaToMakeMove = userMana >= neededManaToAttack;
    if (hasManaToMakeMove == false) return left(DosentHaveMana());

    return right(VoidSucess());
  }
}
