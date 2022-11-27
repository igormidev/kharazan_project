import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/param_can_user_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/protocol_can_user_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/change_piece_position_usecase/param_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/change_piece_position_usecase/protocol_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/deal_damage_to_piece_usecase/param_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/deal_damage_to_piece_usecase/protocol_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/protocol_get_match_states_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_usecase/param_get_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_usecase/protocol_get_piece_usecase.dart';
import 'param_make_move_usecase.dart';
import 'protocol_make_move_usecase.dart';
import 'return_make_move_usecase.dart';

class ImplMakeMoveUsecase implements ProtocolMakeMoveUsecase {
  final ProtocolGetMatchStatesUsecase _getMatchStatesUsecase;
  final ProtocolChangePiecePositionUsecase _changePiecePositionUsecase;
  final ProtocolDealDamageToPieceUsecase _dealDamageToPieceUsecase;
  final ProtocolCanUserMakeMoveUsecase _canUserMakeMoveUsecase;
  final ProtocolGetPieceUsecase _getPieceUsecase;

  const ImplMakeMoveUsecase({
    // UseCases
    required ProtocolGetMatchStatesUsecase getMatchStatesUsecase,
    required ProtocolChangePiecePositionUsecase changePiecePositionUsecase,
    required ProtocolDealDamageToPieceUsecase dealDamageToPieceUsecase,
    required ProtocolCanUserMakeMoveUsecase canUserMakeMoveUsecase,
    required ProtocolGetPieceUsecase getPieceUsecase,
  })  : _getMatchStatesUsecase = getMatchStatesUsecase,
        _changePiecePositionUsecase = changePiecePositionUsecase,
        _dealDamageToPieceUsecase = dealDamageToPieceUsecase,
        _canUserMakeMoveUsecase = canUserMakeMoveUsecase,
        _getPieceUsecase = getPieceUsecase;

  @override
  Either<MatchFailure, ReturnMakeMoveUsecase> call(MakeMoveParam param) {
    // First, lets obtain the coordenates of the move
    final CoordenatesInMove coordenatesInMove;
    try {
      coordenatesInMove = CoordenatesInMove.fromString(param.move);
    } catch (_) {
      return left(ErrorWhileCastingMovement());
    }

    // Obtaining piece in coordenate
    final originCoordenates = coordenatesInMove.origin;
    final originParam = GetPieceParam(coordenates: originCoordenates);
    final originResponse = _getPieceUsecase(originParam);
    final hadErrorToGetPieceOrigin = originResponse.isLeft();
    if (hadErrorToGetPieceOrigin) return left(originResponse.asLeftResult);

    final destinyCoordenates = coordenatesInMove.destiny;
    final destinyParam = GetPieceParam(coordenates: destinyCoordenates);
    final destinyResponse = _getPieceUsecase(destinyParam);
    final hadErrorToGetPieceDestiny = destinyResponse.isLeft();
    if (hadErrorToGetPieceDestiny) return left(destinyResponse.asLeftResult);

    final pieceOrigin = originResponse.asRightResult;
    final pieceDestiny = destinyResponse.asRightResult;
    // Needs a origin piece to make a move with it
    if (pieceOrigin == null) return left(InvalidPieceLocation());

    // Verify if user has mana to make the move
    final canMoveParam = CanUserMakeMoveParam(
      userId: param.userId,
      neededManaToMakeMove: pieceOrigin.cost,
    );
    final canOriginPieceMove = _canUserMakeMoveUsecase(canMoveParam);
    if (canOriginPieceMove.isLeft()) return canOriginPieceMove.asLeft();

    // If dosen't exist a piece in the destiny, the user is just moving a piece of
    // a position to another position. But if exists a piece in the destiny, the
    // move maked by the user is a attack of the origin piece to the destiny piece.
    final doesExistsAPieceInDestiny = pieceDestiny != null;

    if (doesExistsAPieceInDestiny) {
      final param = DealDamageToPieceParam(
          coordenates: destinyCoordenates, damage: pieceOrigin.damage);
      final dealDamageResponse = _dealDamageToPieceUsecase(param);

      if (dealDamageResponse.isLeft()) return dealDamageResponse.asLeft();
    } else {
      final param = ChangePiecePositionParam(
        originCoordenate: originCoordenates,
        destinyCoordenate: destinyCoordenates,
      );
      final changeResponse = _changePiecePositionUsecase(param);

      if (changeResponse.isLeft()) return changeResponse.asLeft();
    }

    // Obtain the states of the match after the maded move impact
    final matchStatesResponse = _getMatchStatesUsecase();
    if (matchStatesResponse.isLeft()) return matchStatesResponse.asLeft();
    final matchStates = matchStatesResponse.asRightResult;

    final returnMakeMoveUsecase = ReturnMakeMoveUsecase(
      moveMaked: coordenatesInMove,
      playerThatMakedMoveId: param.userId,
      boardState: matchStates.boardState,
      usersInTheMatchState: matchStates.usersInTheMatchState,
    );

    return right(returnMakeMoveUsecase);
  }
}
