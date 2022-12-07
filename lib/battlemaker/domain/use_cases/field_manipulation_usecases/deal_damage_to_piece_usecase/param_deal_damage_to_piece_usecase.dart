import 'package:equatable/equatable.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class DealDamageToPieceParam extends Equatable {
  /// Coordenate of the piece that will recive the [damage]
  final Coordenate targetPieceCoordenates;

  /// The damage that the piece in the [targetPieceCoordenates] will recive
  final int damage;

  const DealDamageToPieceParam({
    required this.targetPieceCoordenates,
    required this.damage,
  });

  @override
  List<Object?> get props => [damage, targetPieceCoordenates];
}
