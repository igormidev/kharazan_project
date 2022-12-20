import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';

import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_piece_make_move_usecase/param_can_piece_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_piece_make_move_usecase/protocol_can_piece_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/param_can_user_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/protocol_can_user_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/define_type_of_move_usecase/param_define_type_of_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/define_type_of_move_usecase/protocol_define_type_of_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/execute_typed_move_usecase/param_execute_typed_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/execute_typed_move_usecase/protocol_execute_typed_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/protocol_get_match_states_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_move_entities_usecase/param_get_move_entities_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_move_entities_usecase/protocol_get_move_entities_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_move_entities_usecase/return_get_move_entities_usecase.dart';
import 'param_make_move_usecase.dart';
import 'protocol_make_move_usecase.dart';
import 'return_make_move_usecase.dart';

class ImplMakeMoveUsecase implements ProtocolMakeMoveUsecase {
  final ProtocolGetMatchStatesUsecase _getMatchStatesUsecase;

  final ProtocolCanUserMakeMoveUsecase _canUserMakeMoveUsecase;
  final ProtocolGetMoveEntitiesUsecase _getMoveEntitiesUsecase;
  final ProtocolDefineTypeOfMoveUsecase _defineTypeOfMoveUsecase;
  final ProtocolExecuteTypedMoveUsecase _executeTypedMoveUsecase;
  final ProtocolCanPieceMakeMoveUsecase _canPieceMakeMoveUsecase;

  const ImplMakeMoveUsecase({
    // UseCases
    required ProtocolDefineTypeOfMoveUsecase defineTypeOfMoveUsecase,
    required ProtocolGetMatchStatesUsecase getMatchStatesUsecase,
    required ProtocolCanUserMakeMoveUsecase canUserMakeMoveUsecase,
    required ProtocolGetMoveEntitiesUsecase getPieceUsecase,
    required ProtocolExecuteTypedMoveUsecase executeTypedMoveUsecase,
    required ProtocolCanPieceMakeMoveUsecase canPieceMakeMoveUsecase,
  })  : _defineTypeOfMoveUsecase = defineTypeOfMoveUsecase,
        _getMatchStatesUsecase = getMatchStatesUsecase,
        _canUserMakeMoveUsecase = canUserMakeMoveUsecase,
        _getMoveEntitiesUsecase = getPieceUsecase,
        _executeTypedMoveUsecase = executeTypedMoveUsecase,
        _canPieceMakeMoveUsecase = canPieceMakeMoveUsecase;

  @override
  Either<MatchFailure, ReturnMakeMoveUsecase> call(MakeMoveParam param) {
    final getEntitiesParam = ParamGetMoveEntitiesUsecase(move: param.move);
    final moveEntitiesResponse = _getMoveEntitiesUsecase(getEntitiesParam);
    if (moveEntitiesResponse.isLeft()) {
      return left(moveEntitiesResponse.asLeftResult);
    }
    final ReturnGetMoveEntitiesUsecase moveEntities =
        moveEntitiesResponse.asRightResult;

    // Verify if user has mana to make the move and other validations
    final canUserMakeMoveParam = ParamCanUserMakeMove(
      userId: param.userId,
      neededManaToMakeMove: moveEntities.pieceInOrigin.pieceState.piece.cost,
    );
    final canOriginPieceMove = _canUserMakeMoveUsecase(canUserMakeMoveParam);
    if (canOriginPieceMove.isLeft()) return canOriginPieceMove.asLeft();

    final canPieceMakeMoveParam = ParamCanPieceMakeMoveUsecase(
      coordenatesInMove: moveEntities.coordenatesInMove,
      pieceInOrigin: moveEntities.pieceInOrigin,
      pieceInDestiny: moveEntities.pieceInDestiny,
      possibleOriginPieceMovements: moveEntities.possibleOriginPieceMovements,
      possibleOriginPieceAttacks: moveEntities.possibleOriginPieceAttacks,
    );
    final canPieceMakeMoveResponse =
        _canPieceMakeMoveUsecase(canPieceMakeMoveParam);
    if (canPieceMakeMoveResponse.isLeft()) {
      return canPieceMakeMoveResponse.asLeft();
    }

    // Defining the type of the move that the enemy maded
    final defineMoveParamater = ParamDefineTypeOfMoveUsecase(
      coordenatesInMove: moveEntities.coordenatesInMove,
      pieceInOrigin: moveEntities.pieceInOrigin,
      pieceInDestiny: moveEntities.pieceInDestiny,
      otherBoardEntities: moveEntities.otherBoardEntities,
    );
    final typeOfMoveResponse = _defineTypeOfMoveUsecase(defineMoveParamater);
    if (typeOfMoveResponse.isLeft()) return typeOfMoveResponse.asLeft();
    final typeOfMove = typeOfMoveResponse.asRightResult.typeOfMoveEntity;

    // Execute the move
    final executeTypedMoveParam =
        ParamExecuteTypedMoveUsecase(typeOfMoveEntity: typeOfMove);
    final executeTypedMove = _executeTypedMoveUsecase(executeTypedMoveParam);
    if (executeTypedMove.isLeft()) return executeTypedMove.asLeft();
    final animationsInMove = executeTypedMove.asRightResult.animationsInMove;

    // Obtain the states of the match after the maded move impact
    final matchStatesResponse = _getMatchStatesUsecase();
    if (matchStatesResponse.isLeft()) return matchStatesResponse.asLeft();
    final matchStates = matchStatesResponse.asRightResult;
    final returnMakeMoveUsecase = ReturnMakeMoveUsecase(
      moveMaked: moveEntities.coordenatesInMove,
      playerThatMakedMoveId: param.userId,
      boardStates: matchStates.boardState,
      usersInTheMatchState: matchStates.usersInTheMatchState,
      animationsInMove: animationsInMove,
    );
    return right(returnMakeMoveUsecase);
  }
}
