import 'package:equatable/equatable.dart';

import 'package:micro_kharazan/battlemaker/domain/entities/type_of_move_entity.dart';

class ReturnDefineTypeOfMoveUsecase extends Equatable {
  final TypeOfMoveEntity typeOfMoveEntity;
  const ReturnDefineTypeOfMoveUsecase({required this.typeOfMoveEntity});

  @override
  List<Object> get props => [typeOfMoveEntity];
}
