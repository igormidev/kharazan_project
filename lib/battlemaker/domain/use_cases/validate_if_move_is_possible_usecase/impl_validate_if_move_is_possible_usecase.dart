import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/validate_if_move_is_possible_usecase/param_validate_if_move_is_possible_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/validate_if_move_is_possible_usecase/protocol_validate_if_move_is_possible_usecase.dart';

class ImplValidateIfMoveIsPossibleUsecase
    extends ProtocolValidateIfMoveIsPossibleUsecase {
  final ProtocolBoardRepository _boardRepository;

  ImplValidateIfMoveIsPossibleUsecase({
    required ProtocolBoardRepository boardRepository,
  }) : _boardRepository = boardRepository;

  @override
  Either<MatchFailure, VoidSucess> call(
    ParamValidateIfMoveIsPossibleUsecase param,
  ) {
    return param.typeOfMoveEntity.when<Either<MatchFailure, VoidSucess>>(
      pieceChangingPosition: (
        coordenatesInMove,
        pieceInOrigin,
      ) {
        // TODO: Implement validation of changing position move
        return right(VoidSucess());
      },
      pieceAttackingOther: (
        coordenatesInMove,
        pieceInOrigin,
        pieceInDestiny,
      ) {
        // TODO: Implement validation of attack move
        return right(VoidSucess());
      },
    );
  }
}
