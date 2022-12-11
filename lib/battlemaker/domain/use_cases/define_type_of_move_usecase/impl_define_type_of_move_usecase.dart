import 'package:micro_kharazan/battlemaker/domain/entities/type_of_move_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/define_type_of_move_usecase/param_define_type_of_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/define_type_of_move_usecase/protocol_define_type_of_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/define_type_of_move_usecase/return_define_type_of_move_usecase.dart';

class ImplDefineTypeOfMoveUsecase extends ProtocolDefineTypeOfMoveUsecase {
  @override
  Either<MatchFailure, ReturnDefineTypeOfMoveUsecase> call(
    ParamDefineTypeOfMoveUsecase param,
  ) {
    final coordenatesInMove = param.coordenatesInMove;
    final pieceInOrigin = param.pieceInOrigin;
    final pieceInDestiny = param.pieceInDestiny;

    final otherBoardEntities = param.otherBoardEntities;

    // If dosen't exist a piece in the destiny, the user is just moving a piece of
    // a position to another position. But if exists a piece in the destiny, the
    // move maked by the user is a attack of the origin piece to the destiny piece.
    final bool doesExistsAPieceInDestiny = pieceInDestiny != null;

    if (doesExistsAPieceInDestiny) {
      final typeOfMove = TypeOfMoveEntity.pieceAttackingOther(
        coordenatesInMove: coordenatesInMove,
        pieceInOrigin: pieceInOrigin,
        pieceInDestiny: pieceInDestiny,
        otherBoardEntities: otherBoardEntities,
      );
      return right(ReturnDefineTypeOfMoveUsecase(typeOfMoveEntity: typeOfMove));
    } else {
      final typeOfMove = TypeOfMoveEntity.pieceChangingPosition(
        coordenatesInMove: coordenatesInMove,
        pieceInOrigin: pieceInOrigin,
        otherBoardEntities: otherBoardEntities,
      );
      return right(ReturnDefineTypeOfMoveUsecase(typeOfMoveEntity: typeOfMove));
    }
  }
}
