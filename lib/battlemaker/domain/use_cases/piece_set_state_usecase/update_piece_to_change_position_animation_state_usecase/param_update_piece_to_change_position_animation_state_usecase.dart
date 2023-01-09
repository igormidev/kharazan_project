import 'package:equatable/equatable.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class ParamUpdatePieceToChangePositionAnimationStateUsecase extends Equatable {
  final String boardId;
  final Coordenate originCoordenate;
  final Coordenate destinyCoordenate;
  const ParamUpdatePieceToChangePositionAnimationStateUsecase({
    required this.boardId,
    required this.originCoordenate,
    required this.destinyCoordenate,
  });

  @override
  List<Object?> get props => [boardId, originCoordenate, destinyCoordenate];
}
