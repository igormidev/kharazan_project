abstract class MatchFailure implements Exception {}

class InvalidPieceLocation extends MatchFailure {}

class DosentHaveMana extends MatchFailure {}

class NoPieceFoundInCoordenate extends MatchFailure {}

class EntityWithThatIdAlreadyExists extends MatchFailure {}

class NoUserStateWithThatID extends MatchFailure {}

class ErrorWhileCastingMovement extends MatchFailure {}

class CastingCoordenateError extends MatchFailure {}

class NotAValidResponse extends MatchFailure {}
