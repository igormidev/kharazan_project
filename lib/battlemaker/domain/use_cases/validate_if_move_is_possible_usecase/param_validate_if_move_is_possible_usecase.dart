import 'package:equatable/equatable.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/type_of_move_entity.dart';

class ParamValidateIfMoveIsPossibleUsecase extends Equatable {
  final TypeOfMoveEntity typeOfMoveEntity;
  const ParamValidateIfMoveIsPossibleUsecase({
    required this.typeOfMoveEntity,
  });

  @override
  List<Object> get props => [typeOfMoveEntity];
}
