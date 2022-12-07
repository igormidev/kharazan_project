import 'package:equatable/equatable.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/type_of_move_entity.dart';

class ParamExecuteTypedMoveUsecase extends Equatable {
  final TypeOfMoveEntity typeOfMoveEntity;
  const ParamExecuteTypedMoveUsecase({
    required this.typeOfMoveEntity,
  });

  @override
  List<Object> get props => [typeOfMoveEntity];
}
