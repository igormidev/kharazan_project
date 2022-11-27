import 'package:equatable/equatable.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class GetPieceParam extends Equatable {
  final Coordenate coordenates;
  const GetPieceParam({required this.coordenates});

  @override
  List<Object?> get props => [coordenates];
}
