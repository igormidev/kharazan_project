import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/bloc/battlefield_bloc.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';

import 'peice_details_dialog.dart';

class MatchBottomBar extends StatelessWidget {
  const MatchBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          BlocBuilder<BattlefieldBloc, BattlefieldState>(
              builder: (context, state) {
            final BoardPieceEntity? boardPieceEntity =
                state.mapOrNull(pieceSelected: (value) => value.selectedPiece);

            if (boardPieceEntity == null) {
              return const Expanded(child: SizedBox(height: 80, child: Card()));
            }
            // final isPieceWhite = boardPieceEntity.pieceOwnerId;
            final piece = boardPieceEntity.pieceState.piece;
            return Expanded(
              child: GestureDetector(
                onTap: () async {
                  await showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return PeiceDetailsDialog(piece: piece);
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: SizedBox(
                    height: 80,
                    child: Card(
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
                              _PieceAtributeIndicatorWidget(
                                atributeColor: Colors.yellow[200],
                                atributeValue: piece.cost,
                              ),
                              _PieceAtributeIndicatorWidget(
                                atributeColor: Colors.green[100],
                                atributeValue: piece.life,
                              ),
                              _PieceAtributeIndicatorWidget(
                                atributeColor: Colors.red[200],
                                atributeValue: piece.damage,
                              ),
                            ],
                          ),
                          const SizedBox(width: 16)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
          const SizedBox(width: 8),
          FloatingActionButton(
            child: const Icon(Icons.play_arrow_rounded, size: 40),
            onPressed: () {},
          ),
          const SizedBox(width: 12)
        ],
      ),
    );
  }
}

class _PieceAtributeIndicatorWidget extends StatelessWidget {
  final Color? atributeColor;
  final int atributeValue;
  const _PieceAtributeIndicatorWidget({
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
