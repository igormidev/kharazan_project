import 'package:flutter/widgets.dart';
import 'package:equatable/equatable.dart';
import 'transition_animation_wrapper.dart';

@immutable
class SandPage extends Equatable {
  /// The name of the page in named route system.
  ///
  /// This page will be linked to a widget [page].
  ///
  /// ### Important:
  /// This [name] will be in the route of url
  /// if you use flutter web.
  final String name;

  /// The widget that is tied to the route [name]
  final Widget page;

  /// Transition type
  ///
  /// Default to [TransitionEffect.fade]
  final TransitionEffect? transitionEffect;

  /// The curve of the [transitionEffect] animation
  ///
  /// Default to [Curves.ease]
  final Curve? curve;

  /// The time that the [transitionEffect]
  /// will take to made the [curve]
  final Duration? durationOfTransition;

  const SandPage({
    required this.name,
    required this.page,
    this.transitionEffect,
    this.curve,
    this.durationOfTransition,
  });

  @override
  List<Object> get props => [name, page];
}
