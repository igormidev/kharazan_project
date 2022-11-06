import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'sand_page.dart';

@immutable
class SandModule extends Equatable {
  /// The [name] of the module that will be used as a identifier
  final String name;

  /// The [pages] of the aplication
  final List<SandPage> pages;

  /// The [blocs] that your module will use
  final List<BlocProvider>? blocs;

  /// The [dependencies] that your module will use
  final List<RepositoryProvider>? dependencies;

  const SandModule({
    required this.name,
    required this.pages,
    this.blocs,
    this.dependencies,
  });

  @override
  List<Object> get props {
    return [
      name,
      pages,
      if (blocs != null) blocs!,
      if (dependencies != null) dependencies!,
    ];
  }
}
