//  3951207
import 'package:flutter/material.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/collections/collection_pieces.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class PeiceDetailsDialog extends StatelessWidget {
  final PieceEntity piece;
  const PeiceDetailsDialog({required this.piece, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        children: [
          const SizedBox(height: 8),
          SizedBox(
            height: 90,
            child: Row(
              children: [
                Card(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(piece.whiteDisplayImage),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ListView(
                    children: [
                      Text(
                        piece.name,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        piece.description,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _PieceAtribute(
                title: 'Mana',
                atributeColor: Colors.yellow[200],
                atributeValue: piece.cost,
              ),
              const SizedBox(width: 8),
              _PieceAtribute(
                title: 'Life',
                atributeColor: Colors.green[100],
                atributeValue: piece.life,
              ),
              const SizedBox(width: 8),
              _PieceAtribute(
                title: 'Damage',
                atributeColor: Colors.red[200],
                atributeValue: piece.damage,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PieceMoveAreaDisplay(
                headler: "Attack area",
                color: Colors.orange[400],
                moves: piece.attackArea,
              ),
              PieceMoveAreaDisplay(
                headler: "Movement area",
                color: Colors.indigo,
                moves: piece.moveArea,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PieceMoveAreaDisplay extends StatelessWidget {
  final String headler;
  final Color? color;
  final List<Move> moves;
  const PieceMoveAreaDisplay({
    required this.headler,
    required this.color,
    required this.moves,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          headler,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(3, -3),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(3, -2),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(3, -1),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(3, 0),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(3, -1),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(3, -2),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(3, -3),
              moves: moves,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TileClass.light(
              color: color,
              coordenate: const Coordenate(2, -3),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(2, -2),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(2, -1),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(2, 0),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(2, -1),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(2, -2),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(2, -3),
              moves: moves,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(1, -3),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(1, -2),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(1, -1),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(1, 0),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(1, -1),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(1, -2),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(1, -3),
              moves: moves,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TileClass.light(
              color: color,
              coordenate: const Coordenate(0, -3),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(0, -2),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(0, -1),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(0, 0),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(0, -1),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(0, -2),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(0, -3),
              moves: moves,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(-1, -3),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(-1, -2),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(-1, -1),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(-1, 0),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(-1, -1),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(-1, -2),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(-1, -3),
              moves: moves,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TileClass.light(
              color: color,
              coordenate: const Coordenate(-2, -3),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(-2, -2),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(-2, -1),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(-2, 0),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(-2, -1),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(-2, -2),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(-2, -3),
              moves: moves,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(-3, -3),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(-3, -2),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(-3, -1),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(-3, 0),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(-3, -1),
              moves: moves,
            ),
            TileClass.light(
              color: color,
              coordenate: const Coordenate(-3, -2),
              moves: moves,
            ),
            TileClass.dark(
              color: color,
              coordenate: const Coordenate(-3, -3),
              moves: moves,
            ),
          ],
        ),
      ],
    );
  }
}

const goodSize = 20.0;

class TileClass extends StatelessWidget {
  final Coordenate coordenate;
  final List<Move> moves;
  final Color? color;
  final bool isDark;
  final double size;

  const TileClass.light({
    required this.coordenate,
    required this.color,
    required this.moves,
    this.size = goodSize,
    super.key,
  }) : isDark = false;
  const TileClass.dark({
    required this.coordenate,
    required this.color,
    required this.moves,
    this.size = goodSize,
    super.key,
  }) : isDark = true;

  @override
  Widget build(BuildContext context) {
    final isMarked = moves.any((move) => move.cordenates.contains(coordenate));

    return SizedBox(
      height: size,
      width: size,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isDark ? Colors.green[300] : Colors.grey[200],
        ),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundColor: isMarked ? color : Colors.transparent,
          ),
        ),
      ),
    );
  }
}

class _PieceAtribute extends StatelessWidget {
  final String title;
  final Color? atributeColor;
  final int atributeValue;
  const _PieceAtribute({
    required this.title,
    required this.atributeColor,
    required this.atributeValue,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: EdgeInsets.zero,
        color: atributeColor,
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
          child: Column(
            children: [
              Text(title),
              Text(atributeValue.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
