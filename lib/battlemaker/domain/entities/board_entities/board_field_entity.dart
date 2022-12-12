import 'states/piece_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

part 'board_field_entity.freezed.dart';

@freezed
class BoardFieldEntity with _$BoardFieldEntity {
  const factory BoardFieldEntity.piece({
    /// The id of the user that can control the piece
    required String pieceOwnerId,

    /// The [coordenate] that indicate where is the [piece]
    required Coordenate coordenate,

    /// The [piece] that is in the [coordenate]
    required PieceState pieceState,
    required String uniqueBoardId,
  }) = BoardPieceEntity;
}
