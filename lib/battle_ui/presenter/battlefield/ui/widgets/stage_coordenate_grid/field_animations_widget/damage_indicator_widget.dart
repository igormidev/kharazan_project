import 'package:flutter/material.dart';

class DamageIndicatorWidget extends StatefulWidget {
  final int damage;
  final Duration duration;
  final double axisX;
  final double axisY;
  final double size;

  const DamageIndicatorWidget({
    required this.damage,
    required this.duration,
    required this.axisX,
    required this.axisY,
    required this.size,
    super.key,
  });

  @override
  State<DamageIndicatorWidget> createState() => _DamageIndicatorWidgetState();
}

class _DamageIndicatorWidgetState extends State<DamageIndicatorWidget> {
  double opacityValue = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        opacityValue = 1;
      });
    });

    Future.delayed(
      const Duration(milliseconds: 700),
      () {
        setState(() {
          opacityValue = 0;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.axisX,
      top: widget.axisY,
      height: widget.size,
      width: widget.size,
      child: AnimatedOpacity(
        opacity: opacityValue,
        duration: const Duration(seconds: 1),
        child: Center(
          child: Text(
            '${widget.damage}',
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
