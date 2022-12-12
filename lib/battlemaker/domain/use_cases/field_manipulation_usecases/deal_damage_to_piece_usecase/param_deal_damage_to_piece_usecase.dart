import 'package:equatable/equatable.dart';

class DealDamageToPieceParam extends Equatable {
  /// Coordenate of the piece that will recive the [damage]
  final String uniquePieceEntityId;

  /// The damage that the piece in the [uniquePieceEntityId] will recive
  final int damage;

  const DealDamageToPieceParam({
    required this.uniquePieceEntityId,
    required this.damage,
  });

  @override
  List<Object?> get props => [damage, uniquePieceEntityId];
}
