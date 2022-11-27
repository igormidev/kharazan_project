import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';

extension BoardEntityExtension on BoardEntity {
  BoardEntity copyWith({
    Coordenate? coordenate,
    PieceEntity? piece,
    String? pieceOwnerId,
  }) {
    return BoardEntity(
      coordenate: coordenate ?? this.coordenate,
      piece: piece ?? this.piece,
      pieceOwnerId: pieceOwnerId ?? this.pieceOwnerId,
    );
  }
}
