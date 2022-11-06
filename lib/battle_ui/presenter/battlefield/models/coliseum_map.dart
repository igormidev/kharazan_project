import 'package:flutter/material.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/stage_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

class ColiseumMap implements StageEntity {
  @override
  String get image => 'assets/board.png';

  @override
  Color get primaryColor => Colors.brown[211]!;

  @override
  Color get secondaryColor => Colors.blueGrey[211]!;

  @override
  List<Coordenate> get stageLimits => const [
        //
        Coordenate(1, 1),
        Coordenate(1, 2),
        Coordenate(1, 3),
        Coordenate(1, 4),
        Coordenate(1, 5),
        Coordenate(1, 6),
        Coordenate(1, 7),
        Coordenate(1, 8),

        //
        Coordenate(2, 1),
        Coordenate(2, 2),
        Coordenate(2, 3),
        Coordenate(2, 4),
        Coordenate(2, 5),
        Coordenate(2, 6),
        Coordenate(2, 7),
        Coordenate(2, 8),

        //
        Coordenate(3, 1),
        Coordenate(3, 2),
        Coordenate(3, 3),
        Coordenate(3, 4),
        Coordenate(3, 5),
        Coordenate(3, 6),
        Coordenate(3, 7),
        Coordenate(3, 8),

        //
        Coordenate(4, 1),
        Coordenate(4, 2),
        Coordenate(4, 3),
        Coordenate(4, 4),
        Coordenate(4, 5),
        Coordenate(4, 6),
        Coordenate(4, 7),
        Coordenate(4, 8),

        //
        Coordenate(5, 1),
        Coordenate(5, 2),
        Coordenate(5, 3),
        Coordenate(5, 4),
        Coordenate(5, 5),
        Coordenate(5, 6),
        Coordenate(5, 7),
        Coordenate(5, 8),

        //
        Coordenate(6, 1),
        Coordenate(6, 2),
        Coordenate(6, 3),
        Coordenate(6, 4),
        Coordenate(6, 5),
        Coordenate(6, 6),
        Coordenate(6, 7),
        Coordenate(6, 8),

        //
        Coordenate(7, 1),
        Coordenate(7, 2),
        Coordenate(7, 3),
        Coordenate(7, 4),
        Coordenate(7, 5),
        Coordenate(7, 6),
        Coordenate(7, 7),
        Coordenate(7, 8),

        //
        Coordenate(8, 1),
        Coordenate(8, 2),
        Coordenate(8, 3),
        Coordenate(8, 4),
        Coordenate(8, 5),
        Coordenate(8, 6),
        Coordenate(8, 7),
        Coordenate(8, 8),
      ];
}
