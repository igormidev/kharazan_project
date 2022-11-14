import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';

extension UserStateDtoExtension on UserStateEntity {
  UserStateEntity copyWith({
    int? currentMana,
  }) {
    return UserStateEntity(
      displayName: displayName, // Can't be changed
      playerId: playerId, // Can't be changed
      currentMana: currentMana ?? this.currentMana,
    );
  }
}
