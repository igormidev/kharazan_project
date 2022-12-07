import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/bloc/battlefield_bloc.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/piece_entity.dart';

class PieceWidget extends StatelessWidget {
  final OldBoardEntity entity;
  final double size;
  const PieceWidget({required this.entity, required double size, super.key})
      : size = size - 16;

  @override
  Widget build(BuildContext context) {
    final piece = entity.piece;
    final isWhite = entity.pieceOwnerId == 'user1';
    final img = isWhite ? piece.whiteDisplayImage : piece.blackDisplayImage;

    final coordenate = entity.coordenate;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Draggable<PieceEntity>(
        data: piece,
        maxSimultaneousDrags: 1,
        onDragStarted: () {
          final bloc = context.read<BattlefieldBloc>();
          bloc.add(
              BattlefieldEvent.pieceSelectedInCoordenate(piece, coordenate));
        },
        // onDragCompleted: () => print('onDragCompleted'),
        // onDraggableCanceled: (_, __) => print('onDraggableCanceled'),
        // onDragEnd: (_) => print('onDragEnd'),
        // onDragUpdate: (_) => print('onDragUpdate'),
        childWhenDragging: Opacity(opacity: .4, child: Image.asset(img)),
        feedback: SizedBox(height: size, width: size, child: Image.asset(img)),
        child: Image.asset(img),
      ),
    );
  }
}
