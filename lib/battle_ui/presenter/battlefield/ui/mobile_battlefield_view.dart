import 'package:flutter/material.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/stages/coliseum_map.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/ui/mobile_widget/match_bottom_bar.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/ui/mobile_widget/user_informations_card.dart';

import 'widgets/stage_coordenate_grid/stage_coordenate_grid.dart';

class MobileBattlefieldView extends StatelessWidget {
  const MobileBattlefieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              child: InteractiveViewer(
                // constrained: false,
                boundaryMargin: const EdgeInsets.all(double.infinity),
                child: const SizedBox(
                  width: 600,
                  child: StageCoordenateGrid(
                    stageEntity: ColiseumMap(),
                    maxSquareSize: 800,
                  ),
                ),
              ),
            ),
          ),
          const CardUsersInfoDisplayer(),
          const MatchBottomBar(),
        ],
      ),
    );
  }
}
