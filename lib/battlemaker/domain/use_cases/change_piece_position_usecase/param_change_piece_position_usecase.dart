import 'package:equatable/equatable.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class ChangePiecePositionParam extends Equatable {
  final Coordenate coordenates;
  const ChangePiecePositionParam({required this.coordenates});

  @override
  List<Object?> get props => [coordenates];
}
