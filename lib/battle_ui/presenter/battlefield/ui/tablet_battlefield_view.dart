import 'package:flutter/material.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/coliseum_map.dart';

import 'widgets/stage_coordenate_grid.dart';

class TabletBattlefieldView extends StatelessWidget {
  const TabletBattlefieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: StageCoordenateGrid(
          stageEntity: ColiseumMap(),
          stageSize: 800,
        ),
      ),
    );
  }
}
