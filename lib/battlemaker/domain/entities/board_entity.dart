import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'piece_entity.dart';
import 'package:equatable/equatable.dart';

class BoardEntity extends Equatable {
  /// The [coordenate] that indicate where is the [piece]
  final Coordenate coordenate;

  /// The [piece] that is in the [coordenate]
  final PieceEntity piece;

  /// The id of the user that can control the piece
  final String pieceOwnerId;

  const BoardEntity({
    required this.coordenate,
    required this.piece,
    required this.pieceOwnerId,
  });

  @override
  List<Object> get props => [pieceOwnerId, coordenate, piece];
}
