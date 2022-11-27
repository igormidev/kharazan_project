import 'package:micro_kharazan/battle_ui/domain/usecases/wrap_piece_in_move_with_animation_model/param_wrap_piece_in_move_with_animation_model_usecase.dart';
import 'package:micro_kharazan/battle_ui/domain/entities/animation_type.dart';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battle_ui/domain/usecases/wrap_piece_in_move_with_animation_model/protocol_wrap_piece_in_move_with_animation_model_usecase.dart';
import 'package:micro_kharazan/battlemaker/data/dto/board_dto.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/core/utils/extensions.dart';

class ImplWrapPieceInMoveWithAnimationModelUsecase
    extends ProtocolWrapPieceInMoveWithAnimationModelUsecase {
  @override
  Either<MatchFailure, List<AnimationTypeEntity>> call(
      ParamWrapPieceInMoveWithAnimationModelUsecase param) {
    final List<AnimationTypeEntity> currentEntities = List.from(param.entities);
    final CoordenatesInMove coordenatesInMove;
    try {
      coordenatesInMove = CoordenatesInMove.fromString(param.move);
    } catch (_) {
      return left(CastingCoordenateError());
    }

    // Obtaining the pieces and handling with the possible errors
    final originPiece = currentEntities.firstWhereOrNull(
        (element) => element.entity.coordenate == coordenatesInMove.origin);
    final destinyPiece = currentEntities.firstWhereOrNull(
        (element) => element.entity.coordenate == coordenatesInMove.destiny);
    if (originPiece == null) return left(NoEntityFoundInCoordenate());

    final indexOfOrigin = currentEntities.indexOf(originPiece);

    // If destiny is null, the move is a attack. It's just changing piece position otherwise
    if (destinyPiece != null) {
      final willKillPieceInDestiny =
          destinyPiece.entity.piece.life > originPiece.entity.piece.damage;

      final finalCoordenateAfterMove = willKillPieceInDestiny
          ? coordenatesInMove.destiny
          : coordenatesInMove.origin;

      currentEntities[indexOfOrigin] = AnimationTypeEntity.pieceMakeAttack(
        uniqueId: originPiece.uniqueId,
        originCoordenate: coordenatesInMove.origin,
        destinyCoordenate: coordenatesInMove.destiny,
        entity:
            originPiece.entity.copyWith(coordenate: finalCoordenateAfterMove),
      );
    } else {
      currentEntities[indexOfOrigin] = AnimationTypeEntity.pieceChangePosition(
        uniqueId: originPiece.uniqueId,
        originCoordenate: coordenatesInMove.origin,
        destinyCoordenate: coordenatesInMove.destiny,
        entity:
            originPiece.entity.copyWith(coordenate: coordenatesInMove.destiny),
      );
    }

    // Return the list, with the origin/destiny animation aplied
    return right(currentEntities);
  }
}
