// import '../stage_coordenate_grid.dart';
// import 'package:flutter/material.dart';
// import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
// import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
// import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/piece_animation_model/piece_animation_wrapper.dart';
// import 'piece_widget.dart';

// class AnimationPieceWidget extends StatefulWidget {
//   final BoardEntity entity;
//   final double multipliyer;
//   final double max;
//   final Coordenate origin;
//   final Coordenate destiny;
//   AnimationPieceWidget({
//     required PieceAnimationWrapper animationModel,
//     required this.multipliyer,
//     required this.max,
//     super.key,
//   })  : origin = animationModel.move.origin,
//         destiny = animationModel.move.destiny,
//         entity = animationModel.entity;

//   @override
//   State<AnimationPieceWidget> createState() => _AnimationPieceWidgetState();
// }

// class _AnimationPieceWidgetState extends State<AnimationPieceWidget> {
//   late Coordenate coordenate;

//   @override
//   void initState() {
//     super.initState();
//     coordenate = widget.origin;
//     Future.delayed(const Duration(milliseconds: 30), () {
//       setState(() {
//         coordenate = widget.destiny;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedPositioned(
//       duration: const Duration(milliseconds: 700),
//       left: (coordenate.axisX - 1) * widget.multipliyer,
//       top: (coordenate.axisY - 1) * widget.multipliyer,
//       onEnd: () {},
//       child: SizedBox(
//         height: widget.max,
//         width: widget.max,
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: PieceWidget(entity: widget.entity, size: widget.max),
//         ),
//       ),
//     );
//   }
// }
