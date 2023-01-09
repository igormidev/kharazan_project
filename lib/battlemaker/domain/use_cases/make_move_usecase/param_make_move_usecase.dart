import 'package:equatable/equatable.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/type_of_move_entity.dart';

class MakeMoveParam extends Equatable {
  // Id of the user that is making the move
  final String userId;

  /// The move that was maded
  final TypeOfMoveEntity move;

  const MakeMoveParam({
    required this.userId,
    required this.move,
  });

  @override
  List<Object?> get props => [userId, move];
}
