import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/board_entity.dart';

class PieceAnimationModel {
  final String uuid;
  final OldBoardEntity entity;

  PieceAnimationModel._internal({String? uuid, required this.entity})
      : uuid = uuid ?? DateTime.now().toIso8601String();

  factory PieceAnimationModel.fromEntity(OldBoardEntity entity) =>
      PieceAnimationModel._internal(entity: entity);

  PieceAnimationModel copyWith({
    String? uuid,
    OldBoardEntity? entity,
  }) {
    return PieceAnimationModel._internal(
      uuid: uuid ?? this.uuid,
      entity: entity ?? this.entity,
    );
  }
}

extension PieceListExtension on List<PieceAnimationModel> {
  List<OldBoardEntity> get entities => map((e) => e.entity).toList();
}

extension PieceExtension on List<OldBoardEntity> {
  List<PieceAnimationModel> get toPieceAnimation =>
      map((entity) => PieceAnimationModel.fromEntity(entity)).toList();
}
