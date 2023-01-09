import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_piece_make_move_usecase/protocol_can_piece_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/param_can_user_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/protocol_can_user_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/execute_typed_move_usecase/param_execute_typed_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/execute_typed_move_usecase/protocol_execute_typed_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/protocol_get_match_states_usecase.dart';
import 'param_make_move_usecase.dart';
import 'protocol_make_move_usecase.dart';
import 'return_make_move_usecase.dart';

class ImplMakeMoveUsecase implements ProtocolMakeMoveUsecase {
  final ProtocolGetMatchStatesUsecase _getMatchStatesUsecase;
  final ProtocolCanUserMakeMoveUsecase _canUserMakeMoveUsecase;
  final ProtocolExecuteTypedMoveUsecase _executeTypedMoveUsecase;

  const ImplMakeMoveUsecase({
    // UseCases
    required ProtocolGetMatchStatesUsecase getMatchStatesUsecase,
    required ProtocolCanUserMakeMoveUsecase canUserMakeMoveUsecase,
    required ProtocolExecuteTypedMoveUsecase executeTypedMoveUsecase,
    required ProtocolCanPieceMakeMoveUsecase canPieceMakeMoveUsecase,
  })  : _getMatchStatesUsecase = getMatchStatesUsecase,
        _canUserMakeMoveUsecase = canUserMakeMoveUsecase,
        _executeTypedMoveUsecase = executeTypedMoveUsecase;

  @override
  Either<MatchFailure, ReturnMakeMoveUsecase> call(MakeMoveParam param) {
    // Verify if user has mana to make the move and other validations
    final canUserMakeMoveParam = ParamCanUserMakeMove(
      userId: param.userId,
      neededManaToMakeMove: param.move.pieceInOrigin.pieceState.piece.cost,
    );
    final canOriginPieceMove = _canUserMakeMoveUsecase(canUserMakeMoveParam);
    if (canOriginPieceMove.isLeft()) return canOriginPieceMove.asLeft();

    // Execute the move
    final executeTypedMoveParam =
        ParamExecuteTypedMoveUsecase(typeOfMoveEntity: param.move);
    final executeTypedMove = _executeTypedMoveUsecase(executeTypedMoveParam);
    if (executeTypedMove.isLeft()) return executeTypedMove.asLeft();
    final animationsInMove = executeTypedMove.asRightResult.animationsInMove;

    // Obtain the states of the match after the maded move impact
    final matchStatesResponse = _getMatchStatesUsecase();
    if (matchStatesResponse.isLeft()) return matchStatesResponse.asLeft();
    final matchStates = matchStatesResponse.asRightResult;
    final returnMakeMoveUsecase = ReturnMakeMoveUsecase(
      playerThatMakedMoveId: param.userId,
      boardStates: matchStates.boardState,
      usersInTheMatchState: matchStates.usersInTheMatchState,
      animationsInMove: animationsInMove,
    );
    return right(returnMakeMoveUsecase);
  }
}
