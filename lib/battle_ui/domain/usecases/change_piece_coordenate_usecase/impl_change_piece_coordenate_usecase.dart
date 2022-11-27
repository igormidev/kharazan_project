import 'dart:async';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/data/dto/board_dto.dart';
import 'param_change_piece_coordenate_usecase.dart';
import 'protocol_change_piece_coordenate_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/piece_animation_model/piece_animation_model.dart';

class ImplChangePieceCoordenateUsecase
    extends ProtocolChangePieceCoordenateUsecase {
  @override
  FutureOr<Either<MatchFailure, List<PieceAnimationModel>>> call(
      ParamChangePieceCoordenateUsecase param) {
    final entities = [...param.entities];
    final origin = param.coordenatesInMove.origin;
    final destiny = param.coordenatesInMove.destiny;

    final entityIndex = entities
        .indexWhere((animation) => animation.entity.coordenate == origin);

    if (entityIndex == -1) return left(NoEntityFoundInCoordenate());

    final PieceAnimationModel entity = entities.elementAt(entityIndex);
    log('before: ${entities[entityIndex].entity}');
    entities[entityIndex] =
        entity.copyWith(entity: entity.entity.copyWith(coordenate: destiny));
    log('after: ${entities[entityIndex].entity}');

    return right(entities);
  }
}
