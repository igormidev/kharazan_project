import 'package:equatable/equatable.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class ParamUpdatePieceToMakingFatalAttackAnimationStateUsecase
    extends Equatable {
  final String uniqueBoardId;
  final Coordenate originCoordenate;
  final Coordenate destinyCoordenate;
  const ParamUpdatePieceToMakingFatalAttackAnimationStateUsecase({
    required this.uniqueBoardId,
    required this.originCoordenate,
    required this.destinyCoordenate,
  });

  @override
  List<Object> get props =>
      [uniqueBoardId, originCoordenate, destinyCoordenate];
}
