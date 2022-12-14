import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/bloc/battlefield_bloc.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';

class PieceWidget extends StatelessWidget {
  final BoardPieceEntity entity;
  final double size;
  const PieceWidget({required this.entity, required double size, super.key})
      : size = size - 16;

  @override
  Widget build(BuildContext context) {
    final piece = entity.pieceState.piece;
    final isWhite = entity.pieceOwnerId == 'player1';
    final img = isWhite ? piece.whiteDisplayImage : piece.blackDisplayImage;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () {
          final bloc = context.read<BattlefieldBloc>();
          bloc.add(
            BattlefieldEvent.pieceSelectedInCoordenate(entity),
          );
        },
        // maxSimultaneousDrags: 1,
        // data: piece,
        // onDragStarted: () {},
        // childWhenDragging: Opacity(opacity: .4, child: Image.asset(img)),
        // feedback: SizedBox(height: size, width: size, child: Image.asset(img)),
        child: Image.asset(img),
      ),
    );
  }
}
