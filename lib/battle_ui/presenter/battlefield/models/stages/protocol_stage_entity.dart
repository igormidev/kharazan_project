import 'dart:ui';

import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

abstract class StageEntity {
  final List<Coordenate> stageLimits;
  final Color primaryColor;
  final Color secondaryColor;
  final String image;

  const StageEntity(
    this.image,
    this.stageLimits,
    this.primaryColor,
    this.secondaryColor,
  );
}
