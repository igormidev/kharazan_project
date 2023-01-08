import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

extension MatchFailureExtension on MatchFailure {
  bool isType(MatchFailure Function() type) {
    final thisType = type().runtimeType;
    return map<bool>(
      invalidPieceLocation: (value) => value.runtimeType == thisType,
      dosentHaveMana: (value) => value.runtimeType == thisType,
      notAValidResponse: (value) => value.runtimeType == thisType,
      castingCoordenateError: (value) => value.runtimeType == thisType,
      noUserStateWithThatID: (value) => value.runtimeType == thisType,
      noPieceWithCoordenateToRemoveIt: (value) => value.runtimeType == thisType,
      coordenateNotInOriginPieceRange: (value) => value.runtimeType == thisType,
      noPieceWithIdToUpdate: (value) => value.runtimeType == thisType,
      entityWithThatIdAlreadyExists: (value) => value.runtimeType == thisType,
      errorWhileCastingMovement: (value) => value.runtimeType == thisType,
      noEntityWithId: (value) => value.runtimeType == thisType,
      noPieceWithIdToRemoveIt: (value) => value.runtimeType == thisType,
      noPieceFoundInCoordenateToObtain: (value) =>
          value.runtimeType == thisType,
    );
  }
}
