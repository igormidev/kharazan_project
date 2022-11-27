import 'package:equatable/equatable.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class GetPieceValidMovesParam extends Equatable {
  final Coordenate coordenate;

  const GetPieceValidMovesParam({required this.coordenate});

  @override
  List<Object?> get props => [coordenate];
}
