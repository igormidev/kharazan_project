import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_piece_make_move_usecase/param_can_piece_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_piece_make_move_usecase/protocol_can_piece_make_move_usecase.dart';
import 'package:micro_kharazan/sandbox_logger/sand_custom_logs.dart';

class ImplCanPieceMakeMoveUsecase implements ProtocolCanPieceMakeMoveUsecase {
  @override
  Either<MatchFailure, VoidSucess> call(ParamCanPieceMakeMoveUsecase param) {
    final destinyPiece = param.pieceInDestiny?.pieceState.piece;
    final originCoordenate = param.coordenatesInMove.origin;
    final destinyCoordenate = param.coordenatesInMove.destiny;
    final possibleOriginPieceMovements = param.possibleOriginPieceMovements;
    final possibleOriginPieceAttacks = param.possibleOriginPieceAttacks;

    if (destinyPiece.isNotNull) {
      final isDestinyCoordenateInOriginPieceAttackRange =
          possibleOriginPieceAttacks.contains(destinyCoordenate);

      if (isDestinyCoordenateInOriginPieceAttackRange == false) {
        return left(CoordenateNotInOriginPieceRange());
      }
    } else {
      final isDestinyCoordenateInOriginPieceMoveRange =
          possibleOriginPieceMovements.contains(originCoordenate);

      if (isDestinyCoordenateInOriginPieceMoveRange == false) {
        return left(CoordenateNotInOriginPieceRange());
      }
    }

    return right(VoidSucess());
  }
}
