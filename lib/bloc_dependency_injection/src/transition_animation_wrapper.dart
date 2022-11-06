import 'package:flutter/material.dart';

class TransitionAnimationWrapper extends PageRouteBuilder {
  /// The widget below this widget in the tree
  final Widget child;

  /// Transition type
  ///
  /// Default to [TransitionEffect.fade]
  final TransitionEffect transitionEffect;

  /// The curve of the [transitionEffect] animation
  ///
  /// Default to [Curves.ease]
  final Curve curve;

  /// The time that the [transitionEffect]
  /// will take to made the [curve]
  final Duration durationOfTransition;

  TransitionAnimationWrapper({
    required this.child,
    RouteSettings? settings,
    this.transitionEffect = TransitionEffect.rightToLeft,
    this.curve = Curves.ease,
    this.durationOfTransition = const Duration(milliseconds: 300),
  }) : super(
          pageBuilder: (BuildContext context, animation, _) => child,
          settings: settings,
          transitionDuration: durationOfTransition,
          reverseTransitionDuration: durationOfTransition,
          transitionsBuilder: (_, Animation<double> animation, __, child) {
            return getTransitionEffect(
                transitionEffect, animation, child, curve);
          },
        );
}

Widget getTransitionEffect(TransitionEffect transitionEffect,
    Animation<double> animation, Widget child, Curve curve) {
  switch (transitionEffect) {
    case TransitionEffect.fade:
      return FadeTransition(opacity: animation, child: child);
    case TransitionEffect.scale:
      return ScaleTransition(scale: animation, child: child);
    default:
      var tween = Tween(begin: transitionEffect.value, end: Offset.zero)
        ..chain(CurveTween(curve: curve));

      return SlideTransition(
        transformHitTests: true,
        position: animation.drive(tween),
        child: child,
      );
  }
}

enum TransitionEffect {
  fade,
  scale,
  rightToLeft,
  leftToRight,
  topToBottom,
  bottomToTop;

  Offset get value {
    switch (this) {
      case TransitionEffect.rightToLeft:
        return const Offset(1.0, 0.0);
      case TransitionEffect.leftToRight:
        return const Offset(-1.0, 0.0);
      case TransitionEffect.topToBottom:
        return const Offset(0.0, -1.0);
      case TransitionEffect.bottomToTop:
        return const Offset(0.0, 1.0);
      default:
        return const Offset(0.0, 0.0);
    }
  }
}
