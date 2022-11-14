import 'package:equatable/equatable.dart';

class UserStateEntity extends Equatable {
  final String displayName;
  final String playerId;
  final int currentMana;

  const UserStateEntity({
    required this.displayName,
    required this.playerId,
    required this.currentMana,
  });

  @override
  List<Object> get props => [playerId, currentMana];
}
