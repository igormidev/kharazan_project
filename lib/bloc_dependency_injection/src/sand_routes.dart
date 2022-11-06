import 'package:flutter/widgets.dart';
import 'package:micro_kharazan/bloc_dependency_injection/src/sand_binding_wrapper.dart';
import 'package:micro_kharazan/bloc_dependency_injection/src/sand_page.dart';
import 'sand_module.dart';
import 'transition_animation_wrapper.dart';

@immutable
class SandRoutes {
  final List<SandModule> modules;

  const SandRoutes({required this.modules});

  Route? generate(RouteSettings settings) {
    final String route = settings.name ?? '/DEFAULT_NULL_SAFETY_ROUTE';

    final SandModule module =
        modules.singleWhere((m) => route.startsWith('/${m.name}'));
    final SandPage page =
        module.pages.singleWhere((page) => page.name == route);

    final SandBindingWrapper childWithBinding = SandBindingWrapper(
      blocs: module.blocs ?? [],
      dependencies: module.dependencies ?? [],
      child: page.page,
    );

    final childWithAnimation = TransitionAnimationWrapper(
      child: childWithBinding,
      settings: settings,
      curve: page.curve ?? Curves.ease,
      durationOfTransition:
          page.durationOfTransition ?? const Duration(milliseconds: 300),
      transitionEffect: page.transitionEffect ?? TransitionEffect.rightToLeft,
    );

    return childWithAnimation;
  }

  Map<String, WidgetBuilder> get build {
    final Map<String, WidgetBuilder> routes = {};
    for (var module in modules) {
      for (var page in module.pages) {
        final SandBindingWrapper childWithBinding = SandBindingWrapper(
          blocs: module.blocs ?? [],
          dependencies: module.dependencies ?? [],
          child: page.page,
        );

        routes[page.name] = ((BuildContext context) => childWithBinding);
      }
    }
    return routes;
  }
}
