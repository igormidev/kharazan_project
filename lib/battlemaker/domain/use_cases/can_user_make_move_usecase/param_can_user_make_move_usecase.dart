import 'package:equatable/equatable.dart';

class CanUserMakeMoveParam extends Equatable {
  final String userId;
  final int neededManaToMakeMove;

  const CanUserMakeMoveParam({
    required this.userId,
    required this.neededManaToMakeMove,
  });

  @override
  List<Object?> get props => [userId, neededManaToMakeMove];
}
