import 'package:flutter/material.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'piece_widget.dart';

class PieceAttackFatalAnimationWidget extends StatefulWidget {
  final Duration animationDuration;
  final BoardPieceEntity entity;
  final String valueKey;
  final double axisX;
  final double axisY;
  final double size;
  final double coordenateMultipliyer;

  final Coordenate originCoordenate;
  final Coordenate destinyCoordenate;

  const PieceAttackFatalAnimationWidget({
    required this.animationDuration,
    required this.entity,
    required this.valueKey,
    required this.axisX,
    required this.axisY,
    required this.size,
    required this.coordenateMultipliyer,
    required this.originCoordenate,
    required this.destinyCoordenate,
    super.key,
  });

  @override
  State<PieceAttackFatalAnimationWidget> createState() =>
      _PieceAttackFatalAnimationWidgetState();
}

class _PieceAttackFatalAnimationWidgetState
    extends State<PieceAttackFatalAnimationWidget> {
  late double axisX =
      (widget.originCoordenate.axisX - 1) * widget.coordenateMultipliyer;
  late double axisY =
      (widget.originCoordenate.axisY - 1) * widget.coordenateMultipliyer;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _updateUIMove();
    });
  }

  @override
  void didUpdateWidget(covariant PieceAttackFatalAnimationWidget oldWidget) {
    _updateUIMove();
    super.didUpdateWidget(oldWidget);
  }

  void _updateUIMove() {
    final destinyCoordenate = widget.destinyCoordenate;
    setState(() {
      axisX = (destinyCoordenate.axisX - 1) * widget.coordenateMultipliyer;
      axisY = (destinyCoordenate.axisY - 1) * widget.coordenateMultipliyer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: widget.animationDuration,
      left: axisX,
      top: axisY,
      height: widget.size,
      width: widget.size,
      child: PieceWidget(entity: widget.entity, size: widget.size),
    );
  }
}