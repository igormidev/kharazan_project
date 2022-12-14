import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/bloc/battlefield_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/stages/coliseum_map.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/design_system/custom_contrained_box.dart';

import 'widgets/stage_coordenate_grid/stage_coordenate_grid.dart';

class MobileBattlefieldView extends StatelessWidget {
  const MobileBattlefieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Stack(
        children: [
          InteractiveViewer(
            constrained: false,
            child: const SizedBox(
              width: 600,
              child: StageCoordenateGrid(
                stageEntity: ColiseumMap(),
                maxSquareSize: 800,
              ),
            ),
          ),
          const CardUsersInfoDisplayer(),
        ],
      ),
      bottomNavigationBar: const MatchBottomBar(),
    );
  }
}

class MatchBottomBar extends StatelessWidget {
  const MatchBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 80,
                child: BlocBuilder<BattlefieldBloc, BattlefieldState>(
                  builder: (context, state) {
                    final BoardPieceEntity? boardPieceEntity = state.mapOrNull(
                        pieceSelected: (value) => value.selectedPiece);

                    if (boardPieceEntity == null) return const Card();
                    final piece = boardPieceEntity.pieceState.piece;
                    return Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Card(
                              color: Colors.grey[200],
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(piece.whiteDisplayImage),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                piece.name,
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                              Text(
                                'Testing a piece\ndescription hehe',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              PieceAtributeIndicatorWidget(
                                atributeColor: Colors.yellow[200],
                                atributeValue: piece.cost,
                              ),
                              PieceAtributeIndicatorWidget(
                                atributeColor: Colors.green[100],
                                atributeValue: piece.life,
                              ),
                              PieceAtributeIndicatorWidget(
                                atributeColor: Colors.red[200],
                                atributeValue: piece.damage,
                              ),
                            ],
                          ),
                          const SizedBox(width: 16)
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        FloatingActionButton(
          child: const Icon(Icons.play_arrow_rounded, size: 40),
          onPressed: () {},
        ),
        const SizedBox(width: 16)
      ],
    );
  }
}

class PieceAtributeIndicatorWidget extends StatelessWidget {
  final Color? atributeColor;
  final int atributeValue;
  const PieceAtributeIndicatorWidget({
    super.key,
    required this.atributeColor,
    required this.atributeValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Card(
        margin: EdgeInsets.zero,
        color: atributeColor,
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(atributeValue.toString()),
        ),
      ),
    );
  }
}

class CardUsersInfoDisplayer extends StatelessWidget {
  const CardUsersInfoDisplayer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BattlefieldBloc, BattlefieldState>(
      buildWhen: (previous, current) =>
          listEquals(previous.users, current.users) == false,
      builder: (context, state) {
        final users = state.users;
        return SafeArea(
          child: Align(
            alignment: Alignment.topCenter,
            child: CustomContrainedBox(
              maxHeight: (_) => 70,
              maxWidth: (constraints) => constraints.maxWidth * 0.95,
              margin: const EdgeInsets.only(top: 12),
              builder: (constraints) {
                return Card(
                  child: Row(
                    children: [
                      UserInformations.rightToLeft(user: users[0]),
                      const VerticalDivider(),
                      UserInformations.leftToRight(user: users[1]),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class UserInformations extends StatelessWidget {
  final UserStateEntity user;

  final bool isLeftToRight;

  const UserInformations.leftToRight({required this.user, super.key})
      : isLeftToRight = true;
  const UserInformations.rightToLeft({required this.user, super.key})
      : isLeftToRight = false;

  @override
  Widget build(BuildContext context) {
    final children = [
      const SizedBox(width: 16),
      Text(
        user.currentMana.toString(),
        style: Theme.of(context).textTheme.displayMedium,
      ),
      Expanded(
        child: SizedBox(
          width: double.maxFinite,
          child: Card(
            color: Colors.grey[300],
            child: Center(
              child: Text(
                '12:47',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ),
        ),
      )
    ];

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            isLeftToRight ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: isLeftToRight ? 0.0 : 12.0,
              right: isLeftToRight ? 12.0 : 0.0,
            ),
            child: Text(
              user.displayName,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: isLeftToRight ? children.reversed.toList() : children,
          ),
        ],
      ),
    );
  }
}
