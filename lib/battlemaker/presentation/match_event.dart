import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
part 'match_event.freezed.dart';

@freezed
class MatchEvent with _$MatchEvent {
  const factory MatchEvent.moveMaked({
    required CoordenatesInMove coordenatesInMove,
    required String playerUserTurnId,
    required List<BoardEntity> boardState,
    required List<UserStateEntity> usersInTheMatchState,
  }) = _MoveMaked;

  const factory MatchEvent.surrender({
    required String surrenderingUserId,
  }) = _UserSurrender;

  const factory MatchEvent.passTurnOtherToUser({
    required String userId,
  }) = _PassTurn;

  const factory MatchEvent.errorOccoured({
    required MatchFailure failure,
  }) = _ErrorOccoured;
}
