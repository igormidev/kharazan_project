import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_move_entities_usecase/param_get_move_entities_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_move_entities_usecase/protocol_get_move_entities_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_move_entities_usecase/return_get_move_entities_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_usecase/param_get_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_usecase/protocol_get_piece_usecase.dart';

class ImplGetMoveEntitiesUsecase implements ProtocolGetMoveEntitiesUsecase {
  final ProtocolGetPieceUsecase _getPieceUsecase;
  const ImplGetMoveEntitiesUsecase({
    required ProtocolGetPieceUsecase getPieceUsecase,
  }) : _getPieceUsecase = getPieceUsecase;

  @override
  Either<MatchFailure, ReturnGetMoveEntitiesUsecase> call(
    ParamGetMoveEntitiesUsecase param,
  ) {
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

    if (pieceOrigin == null) return left(InvalidPieceLocation());

    return right(ReturnGetMoveEntitiesUsecase(
      coordenatesInMove: coordenatesInMove,
      pieceInOrigin: pieceOrigin,
      pieceInDestiny: pieceDestiny,
      otherBoardEntities: const <BoardFieldEntity>[],
    ));
  }
}
