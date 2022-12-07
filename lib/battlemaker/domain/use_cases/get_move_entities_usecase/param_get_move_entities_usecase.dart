import 'package:equatable/equatable.dart';

class ParamGetMoveEntitiesUsecase extends Equatable {
  final String move;
  const ParamGetMoveEntitiesUsecase({required this.move});

  @override
  List<Object> get props => [move];
}
