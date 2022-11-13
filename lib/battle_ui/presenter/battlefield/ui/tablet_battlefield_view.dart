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
          PlayerInfoDisplay(),
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
    return Align(
      child: Container(
        height: 100,
        width: 800,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(38, 177, 177, 177),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // ┌─────────────────────────────────────────────────────────
            // │ The possible movements dots of the selected piece
            // └─────────────────────────────────────────────────────────
            const UserDisplay(),

            // ┌─────────────────────────────────────────────────────────
            // │ The Buttons
            // └─────────────────────────────────────────────────────────
            SizedBox(
              width: 130,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // IconButton(onPressed: () {}, icon: const Icon(Icons.draw)),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Surrender'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Offer draw'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Pass turn'),
                  ),
                ],
              ),
            ),

            const UserDisplay(),
          ],
        ),
      ),
    );
  }
}

class UserDisplay extends StatelessWidget {
  const UserDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          height: 40,
          width: 200,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(37, 133, 133, 133),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('zNeutro'),
              Text('Current mana: 8'),
            ],
          ),
        ),
        Container(
          height: 40,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(36, 99, 99, 99),
          ),
          child: const Center(child: Text('18:50')),
        ),
      ],
    );
  }
}
