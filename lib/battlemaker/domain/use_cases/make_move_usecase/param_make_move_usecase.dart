import 'package:equatable/equatable.dart';

class MakeMoveParam extends Equatable {
  // Id of the user that is making the move
  final String userId;

  /// The move that was maded
  final String move;

  const MakeMoveParam({
    required this.userId,
    required this.move,
  });

  @override
  List<Object?> get props => [userId, move];
}
