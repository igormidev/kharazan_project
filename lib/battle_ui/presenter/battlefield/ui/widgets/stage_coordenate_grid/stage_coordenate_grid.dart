import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/bloc/battlefield_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/ui/widgets/stage_coordenate_grid/coordenates_type_widget/piece_attack_fatal_animation_widget.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/ui/widgets/stage_coordenate_grid/coordenates_type_widget/piece_attack_non_fatal_animation_widget.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/ui/widgets/stage_coordenate_grid/coordenates_type_widget/piece_change_position_animation_widget.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/ui/widgets/stage_coordenate_grid/coordenates_type_widget/piece_default_state_widget.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/ui/widgets/stage_coordenate_grid/field_animations_widget/damage_indicator_widget.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/move_animation_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/stages/protocol_stage_entity.dart';

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
                bloc.add(const BattlefieldEvent.unSelectPiece());
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
              buildWhen: (previous, current) =>
                  listEquals(previous.entities, current.entities) == false,
              builder: (context, state) {
                final multipliyer = width * 0.125;
                final maxSize = width / stageEntity.stageLimits.biggerXInList;

                return Stack(
                  children: state.entities.map(
                    (BoardFieldEntity coordenateEntity) {
                      final coordenate = coordenateEntity.coordenate;
                      final axisX = (coordenate.axisX - 1) * multipliyer;
                      final axisY = (coordenate.axisY - 1) * multipliyer;

                      return coordenateEntity.map<Widget>(
                        piece: (BoardPieceEntity pieceEntity) {
                          return pieceEntity.pieceState.when<Widget>(
                            normal: (PieceEntity piece) {
                              return PieceDefaultStateWidget(
                                key: ValueKey(pieceEntity.uniqueBoardId),
                                valueKey: pieceEntity.uniqueBoardId,
                                entity: pieceEntity,
                                axisX: axisX,
                                axisY: axisY,
                                size: maxSize,
                              );
                            },
                            pieceChangingPosition: (
                              piece,
                              animationTime,
                              originCoordenate,
                              destinyCoordenate,
                            ) {
                              return PieceChangePositionAnimationWidget(
                                key: ValueKey(pieceEntity.uniqueBoardId),
                                animationDuration: animationTime,
                                valueKey: pieceEntity.uniqueBoardId,
                                entity: pieceEntity,
                                size: maxSize,
                                originCoordenate: originCoordenate,
                                destinyCoordenate: destinyCoordenate,
                                coordenateMultipliyer: multipliyer,
                              );
                            },
                            pieceMakingFatalAttack: (
                              piece,
                              animationTime,
                              originCoordenate,
                              destinyCoordenate,
                            ) {
                              return PieceAttackFatalAnimationWidget(
                                key: ValueKey(pieceEntity.uniqueBoardId),
                                animationDuration: animationTime,
                                entity: pieceEntity,
                                valueKey: pieceEntity.uniqueBoardId,
                                size: maxSize,
                                coordenateMultipliyer: multipliyer,
                                originCoordenate: originCoordenate,
                                destinyCoordenate: destinyCoordenate,
                              );
                            },
                            pieceMakingNonFatalAttack: (
                              piece,
                              animationTime,
                              originCoordenate,
                              destinyCoordenate,
                            ) {
                              return PieceAttackNonFatalAnimationWidget(
                                key: ValueKey(pieceEntity.uniqueBoardId),
                                valueKey: pieceEntity.uniqueBoardId,
                                animationDuration: animationTime,
                                entity: pieceEntity,
                                size: maxSize,
                                coordenateMultipliyer: multipliyer,
                                originCoordenate: originCoordenate,
                                destinyCoordenate: destinyCoordenate,
                              );
                            },
                          );
                        },
                      );
                    },
                  ).toList(),
                );
              },
            ),

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
                            pieceSelected: (_, __, ___, ____, piece) {
                              final move = '${piece.coordenate}$coordenate'
                                  .replaceAll('(', '')
                                  .replaceAll(')', '')
                                  .replaceAll('x', '');

                              bloc.add(
                                BattlefieldEvent.makeMoveWithAnimation(
                                  playerThatMakedMove: 'player1',
                                  moveMaded: move,
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

            // ┌─────────────────────────────────────────────────────────
            // │ All animations of the actual move
            // └─────────────────────────────────────────────────────────
            BlocBuilder<BattlefieldBloc, BattlefieldState>(
              buildWhen: (previous, current) =>
                  listEquals(previous.entities, current.entities) == false,
              builder: (context, state) {
                final multipliyer = width * 0.125;
                final maxSize = width / stageEntity.stageLimits.biggerXInList;

                final animations = state.map<List<MoveAnimationEntity>>(
                  defaultStateWithAnimations: (value) => value.animationsInMove,
                  pieceSelected: (value) => const [],
                  defaultState: (value) => const [],
                  withError: (value) => const [],
                );

                return Stack(
                  children: animations.map((MoveAnimationEntity animation) {
                    return animation.when(
                      damageIndicator: (damage, duration, coordenate) {
                        final axisX = (coordenate.axisX - 1) * multipliyer;
                        final axisY = (coordenate.axisY - 1) * multipliyer;
                        return DamageIndicatorWidget(
                          damage: damage,
                          duration: duration,
                          axisX: axisX,
                          axisY: axisY,
                          size: maxSize,
                        );
                      },
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
            final move = '${pieceCoordenate.coordenate}$coordenate'
                .replaceAll('(', '')
                .replaceAll(')', '')
                .replaceAll('x', '');

            bloc.add(
              BattlefieldEvent.makeMoveWithAnimation(
                playerThatMakedMove: 'player1',
                moveMaded: move,
              ),
            );
          },
        );
      },
      child: child,
    );
  }
}
