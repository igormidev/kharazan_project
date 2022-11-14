import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/bloc/battlefield_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/stages/coliseum_map.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';

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
    return BlocSelector<BattlefieldBloc, BattlefieldState,
        List<UserStateEntity>>(
      selector: (BattlefieldState state) {
        return state.when(
          initial: (users, _) => users,
          withError: (_, users, __) => users,
          pieceSelected: (_, __, users, ___, ____) => users,
        );
      },
      builder: (context, users) {
        final UserStateEntity user1 = users[0];
        final UserStateEntity user2 = users[1];
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
                UserDisplay(user: user1),

                // ┌─────────────────────────────────────────────────────────
                // │ The Buttons
                // └─────────────────────────────────────────────────────────
                SizedBox(
                  width: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
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

                UserDisplay(user: user2),
              ],
            ),
          ),
        );
      },
    );
  }
}

class UserDisplay extends StatelessWidget {
  final UserStateEntity user;
  const UserDisplay({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          height: 40,
          width: 210,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(37, 133, 133, 133),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.displayName),
              Text('Current mana: ${user.currentMana}'),
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
          child: const Center(child: Text('15:00')),
        ),
      ],
    );
  }
}
