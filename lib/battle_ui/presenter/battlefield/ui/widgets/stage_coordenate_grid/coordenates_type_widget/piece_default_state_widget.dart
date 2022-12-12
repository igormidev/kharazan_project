import 'package:flutter/material.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'piece_widget.dart';

class PieceDefaultStateWidget extends StatelessWidget {
  final BoardPieceEntity entity;
  final String valueKey;
  final double axisX;
  final double axisY;
  final double size;

  const PieceDefaultStateWidget({
    required this.entity,
    required this.valueKey,
    required this.axisX,
    required this.axisY,
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: axisX,
      top: axisY,
      height: size,
      width: size,
      child: PieceWidget(entity: entity, size: size),
    );
  }
}
