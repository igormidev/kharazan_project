import 'package:equatable/equatable.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class ParamRemovePieceInCoordenateUsecase extends Equatable {
  final Coordenate coordenate;
  const ParamRemovePieceInCoordenateUsecase({required this.coordenate});

  @override
  List<Object> get props => [coordenate];
}
