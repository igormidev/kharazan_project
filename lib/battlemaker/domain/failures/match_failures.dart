import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_failures.freezed.dart';

@freezed
class MatchFailure with _$MatchFailure {
  const factory MatchFailure.invalidPieceLocation() = _InvalidPieceLocation;

  const factory MatchFailure.dosentHaveMana() = _DosentHaveMana;

  const factory MatchFailure.notAValidResponse() = _NotAValidResponse;

  const factory MatchFailure.castingCoordenateError() = _CastingCoordenateError;

  const factory MatchFailure.noUserStateWithThatID() = _NoUserStateWithThatID;

  const factory MatchFailure.noPieceWithIdToUpdate() = _NoPieceWithIdToUpdate;

  const factory MatchFailure.noPieceWithIdToRemoveIt() = _NoPieceWithIdToRemove;

  const factory MatchFailure.noPieceWithCoordenateToRemoveIt() =
      _NoPieceWithCoordenateToRemoveIt;

  const factory MatchFailure.noEntityWithId() = _NoEntityWithId;

  const factory MatchFailure.noPieceFoundInCoordenateToObtain() =
      _NoPieceFoundInCoordenateToObtain;

  const factory MatchFailure.coordenateNotInOriginPieceRange() =
      _CoordenateNotInOriginPieceRange;

  const factory MatchFailure.entityWithThatIdAlreadyExists() =
      _EntityWithThatIdAlreadyExists;

  const factory MatchFailure.errorWhileCastingMovement() =
      _ErrorWhileCastingMovement;
}


// abstract class MatchFailure implements Exception {}

// class CoordenateNotInOriginPieceRange extends MatchFailure {}

// class InvalidPieceLocation extends MatchFailure {}

// class DosentHaveMana extends MatchFailure {}

// class NoPieceFoundInCoordenate extends MatchFailure {}

// class EntityWithThatIdAlreadyExists extends MatchFailure {}

// class NoUserStateWithThatID extends MatchFailure {}

// class ErrorWhileCastingMovement extends MatchFailure {}

// class CastingCoordenateError extends MatchFailure {}

// class NotAValidResponse extends MatchFailure {}
