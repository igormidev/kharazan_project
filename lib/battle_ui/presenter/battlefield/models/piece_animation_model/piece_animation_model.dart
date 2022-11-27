import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';

class PieceAnimationModel {
  final String uuid;
  final BoardEntity entity;

  PieceAnimationModel._internal({String? uuid, required this.entity})
      : uuid = uuid ?? DateTime.now().toIso8601String();

  factory PieceAnimationModel.fromEntity(BoardEntity entity) =>
      PieceAnimationModel._internal(entity: entity);

  PieceAnimationModel copyWith({
    String? uuid,
    BoardEntity? entity,
  }) {
    return PieceAnimationModel._internal(
      uuid: uuid ?? this.uuid,
      entity: entity ?? this.entity,
    );
  }
}

extension PieceListExtension on List<PieceAnimationModel> {
  List<BoardEntity> get entities => map((e) => e.entity).toList();
}

extension PieceExtension on List<BoardEntity> {
  List<PieceAnimationModel> get toPieceAnimation =>
      map((entity) => PieceAnimationModel.fromEntity(entity)).toList();
}
