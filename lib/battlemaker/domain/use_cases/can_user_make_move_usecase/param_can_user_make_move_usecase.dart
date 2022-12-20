import 'package:equatable/equatable.dart';

class ParamCanUserMakeMove extends Equatable {
  final String userId;
  final int neededManaToMakeMove;

  const ParamCanUserMakeMove({
    required this.userId,
    required this.neededManaToMakeMove,
  });

  @override
  List<Object?> get props => [userId, neededManaToMakeMove];
}
