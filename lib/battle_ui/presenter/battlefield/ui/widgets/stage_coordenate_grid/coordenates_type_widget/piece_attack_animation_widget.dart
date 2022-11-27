import 'package:flutter/material.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'piece_draggable_widget.dart';

class PieceAttackAnimationWidget extends StatelessWidget {
  final BoardEntity entity;
  final String valueKey;
  final double axisX;
  final double axisY;
  final double size;

  final Coordenate originCoordenate;
  final Coordenate destinyCoordenate;

  const PieceAttackAnimationWidget({
    required this.entity,
    required this.valueKey,
    required this.axisX,
    required this.axisY,
    required this.size,
    required this.originCoordenate,
    required this.destinyCoordenate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      key: ValueKey(valueKey),
      left: axisX,
      top: axisY,
      height: size,
      width: size,
      child: PieceWidget(entity: entity, size: size),
    );
  }
}