import 'package:equatable/equatable.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class ParamUpdatePieceToMakingNonFatalAttackAnimationStateUsecase
    extends Equatable {
  final String uniquePieceEntityId;
  final Coordenate originCoordenate;
  final Coordenate destinyCoordenate;
  const ParamUpdatePieceToMakingNonFatalAttackAnimationStateUsecase({
    required this.uniquePieceEntityId,
    required this.originCoordenate,
    required this.destinyCoordenate,
  });

  @override
  List<Object> get props =>
      [uniquePieceEntityId, originCoordenate, destinyCoordenate];
}
