import 'package:flutter/material.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/stage_entity.dart';

class StageCoordenateGrid extends StatelessWidget {
  final double stageSize;
  final StageEntity stageEntity;
  const StageCoordenateGrid({
    required this.stageSize,
    required this.stageEntity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: stageSize,
      height: stageSize,
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(stageEntity.image),
        ),
        ...stageEntity.stageLimits.map((stage) {
          return Positioned(
            left: (stage.axisX - 1) * 100,
            top: (stage.axisY - 1) * 100,
            child: Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
          );
        }).toList(),
      ]),
    );
  }

  double _getRespective(int axisX, int bigger) {
    return ((2 * axisX) / bigger) - 1;
  }
}
