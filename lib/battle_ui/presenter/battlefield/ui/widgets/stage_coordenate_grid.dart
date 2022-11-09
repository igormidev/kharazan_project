import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/bloc/battlefield_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/stages/protocol_stage_entity.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';

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
                bloc.add(BattlefieldEvent.setPieces(bloc.state.pieces));
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
              selector: (state) => state.maybeWhen(
                pieceSelected: (pieceMovimentation, _, __) =>
                    pieceMovimentation,
                orElse: () => <Coordenate>[],
              ),
              builder: (context, pieceMovimentation) {
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
                        child: Center(
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.blueGrey.withAlpha(100),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                );
              },
            ),

            // ┌─────────────────────────────────────────────────────────
            // │ The possible attacks dots of the selected piece
            // └─────────────────────────────────────────────────────────
            BlocSelector<BattlefieldBloc, BattlefieldState, List<Coordenate>>(
              selector: (state) => state.maybeWhen(
                pieceSelected: (_, pieceAttacks, __) => pieceAttacks,
                orElse: () => <Coordenate>[],
              ),
              builder: (context, pieceMovimentation) {
                return Stack(
                  children: pieceMovimentation.map((coordenate) {
                    final max = width / stageEntity.stageLimits.biggerXInList;
                    final multipliyer = width * 0.125;
                    final iconSize = width * 0.1625;
                    final align = width * 0.01875;
                    return Positioned(
                      left: ((coordenate.axisX - 1) * multipliyer) - align,
                      top: ((coordenate.axisY - 1) * multipliyer) - align,
                      child: SizedBox(
                        height: max,
                        width: max,
                        child: Icon(
                          // Icons.crop_free,
                          Icons.crop_free_rounded,
                          color: const Color.fromARGB(82, 202, 110, 35),
                          // color: Color.fromARGB(80, 255, 255, 255),
                          size: iconSize,
                        ),
                      ),
                    );
                  }).toList(),
                );
              },
            ),

            // ┌─────────────────────────────────────────────────────────
            // │ The widget of each piece in the game
            // └─────────────────────────────────────────────────────────
            BlocSelector<BattlefieldBloc, BattlefieldState, List<BoardEntity>>(
              selector: (state) => state.pieces,
              builder: (context, entities) {
                return Stack(
                    children: entities.map((entity) {
                  final max = width / stageEntity.stageLimits.biggerXInList;
                  final multipliyer = width * 0.125;
                  return Positioned(
                    left: (entity.coordenate.axisX - 1) * multipliyer,
                    top: (entity.coordenate.axisY - 1) * multipliyer,
                    child: SizedBox(
                      height: max,
                      width: max,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: PieceWidget(entity: entity, size: max),
                      ),
                    ),
                  );
                }).toList());
              },
            ),
          ]);
        },
      ),
    );
  }
}

class PieceWidget extends StatelessWidget {
  final BoardEntity entity;
  final double size;
  const PieceWidget({required this.entity, required double size, super.key})
      : size = size - 16;

  @override
  Widget build(BuildContext context) {
    final piece = entity.piece;
    final isWhite = entity.pieceOwnerId == 'user1';
    final img = isWhite ? piece.whiteDisplayImage : piece.blackDisplayImage;

    final coordenate = entity.coordenate;

    return Draggable<PieceEntity>(
      data: piece,
      maxSimultaneousDrags: 1,
      onDragStarted: () {
        final bloc = context.read<BattlefieldBloc>();
        bloc.add(BattlefieldEvent.pieceSelectedInCoordenate(piece, coordenate));
      },
      // onDragCompleted: () => print('onDragCompleted'),
      // onDraggableCanceled: (_, __) => print('onDraggableCanceled'),
      // onDragEnd: (_) => print('onDragEnd'),
      // onDragUpdate: (_) => print('onDragUpdate'),
      childWhenDragging: Opacity(opacity: .4, child: Image.asset(img)),
      feedback: SizedBox(height: size, width: size, child: Image.asset(img)),
      child: Image.asset(img),
    );
  }
}
