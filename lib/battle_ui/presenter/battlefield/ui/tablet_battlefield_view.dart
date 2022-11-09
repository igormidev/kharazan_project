import 'package:flutter/material.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/stages/coliseum_map.dart';

import 'widgets/stage_coordenate_grid.dart';

class TabletBattlefieldView extends StatelessWidget {
  const TabletBattlefieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          SizedBox(height: 32),
          // Align(
          //   child: Container(
          //     height: 100,
          //     width: 800,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(20),
          //       color: const Color.fromARGB(38, 177, 177, 177),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         SizedBox(
          //           width: 130,
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             crossAxisAlignment: CrossAxisAlignment.stretch,
          //             children: [
          //               ElevatedButton(
          //                 onPressed: () {},
          //                 child: const Text('Surrender'),
          //               ),
          //               ElevatedButton(
          //                 onPressed: () {},
          //                 child: const Text('Offer draw'),
          //               ),
          //               ElevatedButton(
          //                 onPressed: () {},
          //                 child: const Text('Pass turn'),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          SizedBox(height: 20),
          Center(
            child: StageCoordenateGrid(
              stageEntity: ColiseumMap(),
              maxSquareSize: 800,
            ),
          ),
        ],
      ),
    );
  }
}

class PlayerInfoDisplay extends StatelessWidget {
  const PlayerInfoDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
