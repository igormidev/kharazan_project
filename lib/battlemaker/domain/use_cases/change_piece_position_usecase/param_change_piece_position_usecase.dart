import 'package:equatable/equatable.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class ChangePiecePositionParam extends Equatable {
  final Coordenate originCoordenate;
  final Coordenate destinyCoordenate;
  const ChangePiecePositionParam(
      {required this.originCoordenate, required this.destinyCoordenate});

  @override
  List<Object?> get props => [originCoordenate, destinyCoordenate];
}
