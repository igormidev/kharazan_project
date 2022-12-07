import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/bloc/battlefield_bloc.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/animation_type.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/stages/protocol_stage_entity.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/ui/widgets/stage_coordenate_grid/coordenates_type_widget/piece_attack_animation_widget.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/ui/widgets/stage_coordenate_grid/coordenates_type_widget/piece_change_position_animation_widget.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/ui/widgets/stage_coordenate_grid/coordenates_type_widget/piece_default_widget.dart';

class StageCoordenateGrid extends StatelessWidget {
  final double maxSquareSize;
  final StageEntity stageEntity;
  const StageCoordenateGrid({
    required this.maxSquareSize,
    required this.stageEntity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxSquareSize,
      height: maxSquareSize,
      child: LayoutBuilder(
        builder: (_, constrains) {
          final width = constrains.maxWidth;
          return Stack(children: [
            // ┌─────────────────────────────────────────────────────────
            // │ Image of the board
            // └─────────────────────────────────────────────────────────
            GestureDetector(
              onTap: () {
                final bloc = context.read<BattlefieldBloc>();
                // bloc.add(
                //     BattlefieldEvent.setPieces(bloc.state.pieces.entities));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(stageEntity.image),
              ),
            ),

            // ┌─────────────────────────────────────────────────────────
            // │ The possible movements dots of the selected piece
            // └─────────────────────────────────────────────────────────
            BlocSelector<BattlefieldBloc, BattlefieldState, List<Coordenate>>(
              selector: (BattlefieldState state) => state.maybeWhen(
                pieceSelected: (pieceMovimentation, _, __, ___, ____) =>
                    pieceMovimentation,
                orElse: () => <Coordenate>[],
              ),
              builder: (context, pieceMovimentation) {
                if (pieceMovimentation.isEmpty) return const SizedBox.shrink();
                return Stack(
                  children: pieceMovimentation.map((coordenate) {
                    final max = width / stageEntity.stageLimits.biggerXInList;
                    final multipliyer = width * 0.125;
                    return Positioned(
                      left: (coordenate.axisX - 1) * multipliyer,
                      top: (coordenate.axisY - 1) * multipliyer,
                      child: SizedBox(
                        height: max,
                        width: max,
                        child: GestureWrapper(
                          coordenate: coordenate,
                          child: Center(
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.blueGrey.withAlpha(100),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                );
              },
            ),

            // ┌─────────────────────────────────────────────────────────
            // │ The entities in each coordenates
            // └─────────────────────────────────────────────────────────
            BlocBuilder<BattlefieldBloc, BattlefieldState>(
              // buildWhen: (previous, current) =>
              //     listEquals(previous.pieces, current.pieces) == false,
              builder: (context, state) {
                final multipliyer = width * 0.125;
                final max = width / stageEntity.stageLimits.biggerXInList;

                return Stack(
                  children: state.entities.map(
                    (AnimationInField coordenateEntity) {
                      final coordenate = coordenateEntity.entity.coordenate;
                      final axisX = (coordenate.axisX - 1) * multipliyer;
                      final axisY = (coordenate.axisY - 1) * multipliyer;

                      return coordenateEntity.when(
                        // The default piece widget, without animation
                        piece: (entity, uniqueId) {
                          return PieceDefaultWidget(
                            valueKey: uniqueId,
                            entity: entity,
                            axisX: axisX,
                            axisY: axisY,
                            size: max,
                          );
                        },

                        // The animation of a piece moving
                        pieceChangePosition: (
                          animationDuration,
                          uniqueId,
                          entity,
                          originCoordenate,
                          destinyCoordenate,
                        ) {
                          return PieceChangePositionAnimationWidget(
                            animationDuration: animationDuration,
                            originCoordenate: originCoordenate,
                            destinyCoordenate: destinyCoordenate,
                            coordenateMultipliyer: multipliyer,
                            valueKey: uniqueId,
                            entity: entity,
                            size: max,
                          );
                        },

                        // The animation of a piece attacking a other piece
                        pieceMakeAttack: (
                          animationDuration,
                          entity,
                          uniqueId,
                          originCoordenate,
                          destinyCoordenate,
                        ) {
                          return PieceAttackAnimationWidget(
                            animationDuration: animationDuration,
                            originCoordenate: originCoordenate,
                            destinyCoordenate: destinyCoordenate,
                            valueKey: uniqueId,
                            entity: entity,
                            axisX: axisX,
                            axisY: axisY,
                            size: max,
                          );
                        },
                      );
                    },
                  ).toList(),
                );
              },
            ),

            // ┌─────────────────────────────────────────────────────────
            // │ The widget of each piece in the game
            // └─────────────────────────────────────────────────────────
            // BlocBuilder<BattlefieldBloc, BattlefieldState>(
            //   buildWhen: (previous, current) =>
            //       listEquals(previous.pieces, current.pieces) == false,
            //   builder: (context, state) {
            //     final List<PieceAnimationModel> entities = state.pieces;
            //     return Stack(
            //       children: entities.map(
            //         (PieceAnimationModel pieceAnimationModel) {
            //           final BoardEntity entity = pieceAnimationModel.entity;
            //           final max = width / stageEntity.stageLimits.biggerXInList;
            //           final multipliyer = width * 0.125;

            //           return Positioned(
            //             left: (entity.coordenate.axisX - 1) * multipliyer,
            //             top: (entity.coordenate.axisY - 1) * multipliyer,
            //             child: SizedBox(
            //               height: max,
            //               width: max,
            //               child: Padding(
            //                 padding: const EdgeInsets.all(12.0),
            //                 child: PieceWidget(entity: entity, size: max),
            //               ),
            //             ),
            //           );
            //         },
            //       ).toList(),
            //     );
            //   },
            // ),

            // ┌─────────────────────────────────────────────────────────
            // │ The possible attacks dots of the selected piece
            // └─────────────────────────────────────────────────────────
            BlocSelector<BattlefieldBloc, BattlefieldState, List<Coordenate>>(
              selector: (state) => state.maybeWhen(
                pieceSelected: (_, pieceAttacks, __, ___, ____) => pieceAttacks,
                orElse: () => <Coordenate>[],
              ),
              builder: (context, pieceAttacks) {
                if (pieceAttacks.isEmpty) return const SizedBox.shrink();
                return Stack(
                  children: pieceAttacks.map((coordenate) {
                    final max = width / stageEntity.stageLimits.biggerXInList;
                    final multipliyer = width * 0.125;
                    final iconSize = width * 0.1625;
                    final align = width * 0.01875;

                    final isEnemyPieceCoordenate = context
                        .read<BattlefieldBloc>()
                        .state
                        .entities
                        .map((e) => e.entity)
                        .toList()
                        .coordenatesInBoard
                        .contains(coordenate);

                    final color = isEnemyPieceCoordenate
                        ? const Color.fromARGB(255, 210, 88, 79)
                        : const Color.fromARGB(82, 202, 110, 35);
                    return Positioned(
                      left: ((coordenate.axisX - 1) * multipliyer) - align,
                      top: ((coordenate.axisY - 1) * multipliyer) - align,
                      child: InkWell(
                        onTap: () {
                          final bloc = context.read<BattlefieldBloc>();
                          bloc.state.whenOrNull(
                            pieceSelected: (_, __, ___, ____, pieceCoordenate) {
                              final move = '$pieceCoordenate$coordenate'
                                  .replaceAll('(', '')
                                  .replaceAll(')', '')
                                  .replaceAll('x', '');

                              bloc.add(
                                BattlefieldEvent.makeMoveWithAnimation(
                                  'user1',
                                  move,
                                ),
                              );
                            },
                          );
                        },
                        // color: Colors.red,
                        child: SizedBox(
                          height: max,
                          width: max,
                          child: Icon(
                            Icons.crop_free_rounded,
                            color: color,
                            size: iconSize,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ]);
        },
      ),
    );
  }
}

class GestureWrapper extends StatelessWidget {
  final Coordenate coordenate;
  final Widget child;
  // final void Function(BattlefieldBloc bloc, String move) onPressed;
  const GestureWrapper({
    super.key,
    required this.coordenate,
    required this.child,
    // required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final bloc = context.read<BattlefieldBloc>();
        bloc.state.whenOrNull(
          pieceSelected: (_, __, ___, ____, pieceCoordenate) {
            final move = '$pieceCoordenate$coordenate'
                .replaceAll('(', '')
                .replaceAll(')', '')
                .replaceAll('x', '');

            bloc.add(
              BattlefieldEvent.makeMoveWithAnimation(
                'user1',
                move,
              ),
            );
          },
        );
      },
      child: child,
    );
  }
}
