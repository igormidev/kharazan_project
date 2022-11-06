import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum _ENeededWrapType {
  multipleBlocsAndMultipleDependencies,
  multipleBlocsAndOneDependency,
  noBlocAndMultipleDependencies,
  noBlocAndOneDependency,
  multipleBlocsAndNoDependency,
  noBlocAndNoDependency,
}

/// Will provide the [blocs] and [dependencies] for the [child] widget.
class SandBindingWrapper extends StatelessWidget {
  /// Here we have the dependencies that your [child] will need, which can be any class.
  ///
  /// You can get and use the dependency anywhere in your [child] or down the widget tree:
  /// ```dart
  /// // with extensions
  /// context.read<RepositoryA>();
  /// // without extensions
  /// RepositoryProvider.of<RepositoryA>(context)
  /// ```
  final List<RepositoryProvider> dependencies;

  /// Here we have the blocs that your [child] will need, which can be any class.
  ///
  /// You can get and use the bloc anywhere in your [child] or down the widget tree:
  /// ```dart
  /// // with extensions
  /// context.watch<BlocA>();
  /// // without extensions
  /// BlocProvider.of<BlocA>(context, listen: true);
  /// ```
  /// If you call in your child a [BlocBuilder], [BlocListener], [BlocSelector], [BlocConsumer], etc...
  /// The passed blocs will be provided as well.
  final List<BlocProvider> blocs;

  /// The widget that will be wrapped with the structure that
  /// will provide the [blocs] and [dependencies].
  final Widget child;

  /// Will make a wrap in your [child] widget with the
  /// passed [dependencies] and [blocs].
  ///
  /// The [SandBindingWrapper] will first wrap with the
  /// [RepositoryProvider] and then the [BlocProvider].
  /// In the widget tree we will have the following order:
  /// - AppBindingWrapper
  ///    - MultiRepositoryProvider
  ///       - MultiBlocProvider
  const SandBindingWrapper({
    Key? key,
    this.blocs = const [],
    this.dependencies = const [],
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// First lets define the type of the wrap and based on it we will
    /// define what type of wrap providers our [child] needs
    final _ENeededWrapType wrapType = _defineWrapType();

    switch (wrapType) {
      case _ENeededWrapType.multipleBlocsAndMultipleDependencies:
        return MultiRepositoryProvider(
          providers: dependencies,
          child: MultiBlocProvider(providers: blocs, child: child),
        );

      case _ENeededWrapType.multipleBlocsAndOneDependency:
        return RepositoryProvider(
          create: (_) => dependencies.first,
          child: MultiBlocProvider(providers: blocs, child: child),
        );

      case _ENeededWrapType.noBlocAndMultipleDependencies:
        return MultiRepositoryProvider(providers: dependencies, child: child);

      case _ENeededWrapType.noBlocAndOneDependency:
        return RepositoryProvider(create: (_) => dependencies, child: child);

      case _ENeededWrapType.multipleBlocsAndNoDependency:
        return MultiBlocProvider(providers: blocs, child: child);

      case _ENeededWrapType.noBlocAndNoDependency:
        return child;
    }
  }

  _ENeededWrapType _defineWrapType() {
    final bool haveAtLeastOneBloc = blocs.isNotEmpty;
    final bool haveOneDependency = dependencies.length == 1;
    final bool haveMoreThenOneDependency = dependencies.length > 1;

    if (haveOneDependency) {
      if (haveAtLeastOneBloc) {
        return _ENeededWrapType.multipleBlocsAndOneDependency;
      } else {
        return _ENeededWrapType.noBlocAndOneDependency;
      }
    } else if (haveMoreThenOneDependency) {
      if (haveAtLeastOneBloc) {
        return _ENeededWrapType.multipleBlocsAndMultipleDependencies;
      } else {
        return _ENeededWrapType.noBlocAndMultipleDependencies;
      }
    } else {
      if (haveAtLeastOneBloc) {
        return _ENeededWrapType.multipleBlocsAndNoDependency;
      } else {
        return _ENeededWrapType.noBlocAndNoDependency;
      }
    }
  }
}
