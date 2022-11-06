abstract class MatchFailure implements Exception {}

class InvalidPieceLocation extends MatchFailure {}

class DosentHaveMana extends MatchFailure {}

class NoEntityFoundInCoordenate extends MatchFailure {}

class EntityAlreadyExistsInCoordenate extends MatchFailure {}

class ErrorWhileCastingMovement extends MatchFailure {}

class CastingCoordenateError extends MatchFailure {}
