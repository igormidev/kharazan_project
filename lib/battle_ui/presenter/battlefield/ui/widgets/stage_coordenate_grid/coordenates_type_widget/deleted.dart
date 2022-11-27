// import 'piece_draggable_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:micro_kharazan/battle_ui/core/constants.dart';
// import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
// import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

// class DEPRECATEDPieceChangePositionAnimationWidget extends StatelessWidget {
//   final BoardEntity entity;
//   final String valueKey;
//   final double axisX;
//   final double axisY;
//   final double size;

//   final Coordenate originCoordenate;
//   final Coordenate destinyCoordenate;

//   const DEPRECATEDPieceChangePositionAnimationWidget({
//     required this.valueKey,
//     required this.entity,
//     required this.axisX,
//     required this.axisY,
//     required this.size,
//     required this.originCoordenate,
//     required this.destinyCoordenate,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedPositioned(
//       key: ValueKey(valueKey),
//       left: axisX,
//       top: axisY,
//       height: size,
//       width: size,
//       duration: Constants.changePosAnimationTime,
//       child: PieceWidget(entity: entity, size: size),
//     );
//   }
// }
