import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/protocol_get_match_states_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/param_get_piece_valid_moves_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/protocol_get_piece_valid_moves_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/param_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/protocol_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/presentation/match_event.dart';
import 'package:micro_kharazan/battlemaker/presentation/models/battle_current_model.dart';

class BattleMakerController {
  BattleMakerController.createMatch({
    required String firstUserToMoveId,
    required ProtocolMakeMoveUsecase makeMoveUsecase,
    required ProtocolGetMatchStatesUsecase protocolGetMatchStatesUsecase,
    required ProtocolGetPieceValidMovesUsecase getPieceValidMovimentation,
    required ProtocolGetPieceValidMovesUsecase getPieceValidAttacks,
  })  : currentUserTurnId = firstUserToMoveId,
        _makeMoveUsecase = makeMoveUsecase,
        _getPieceValidMovimentation = getPieceValidMovimentation,
        _getPieceValidAttacks = getPieceValidAttacks,
        _protocolGetMatchStatesUsecase = protocolGetMatchStatesUsecase;

  final ProtocolMakeMoveUsecase _makeMoveUsecase;
  final ProtocolGetMatchStatesUsecase _protocolGetMatchStatesUsecase;
  final ProtocolGetPieceValidMovesUsecase _getPieceValidMovimentation;
  final ProtocolGetPieceValidMovesUsecase _getPieceValidAttacks;
  String currentUserTurnId;

  final _eventsStream = StreamController<MatchEvent>();
  StreamSink get inEvents => _eventsStream.sink;
  Stream<MatchEvent> get outEvents => _eventsStream.stream;

  Future<Either<MatchFailure, VoidSucess>> makeMove(
      String userId, String move) async {
    final param = MakeMoveParam(userId: userId, move: move);
    final makeMoveResponse = await _makeMoveUsecase(param);
    if (makeMoveResponse.isLeft()) return left(makeMoveResponse.asLeftResult);

    // Event that will be added
    final matchResult = makeMoveResponse.asRightResult;
    final event = MatchEvent.moveMaked(
      coordenatesInMove: matchResult.moveMaked,
      playerUserTurnId: matchResult.playerThatMakedMoveId,
      boardState: matchResult.boardState,
      usersInTheMatchState: matchResult.usersInTheMatchState,
    );

    inEvents.add(event);
    currentUserTurnId = matchResult.playerThatMakedMoveId;
    return right(VoidSucess());
  }

  /// Receives the [userId] of the player that is gonna assume the turn
  Future<Either<MatchFailure, VoidSucess>> passUserTurn(String userId) async {
    currentUserTurnId = userId;
    final event = MatchEvent.passTurnOtherToUser(userId: userId);
    inEvents.add(event);
    return right(VoidSucess());
  }

  /// Receives the [userId] of the player that is surrendering
  Future<Either<MatchFailure, VoidSucess>> surrender(String userId) async {
    final event = MatchEvent.surrender(surrenderingUserId: userId);
    inEvents.add(event);
    return right(VoidSucess());
  }

  /// Obtain the current state of the board with all relevant info
  Future<Either<MatchFailure, BattleCurrentStateModel>>
      getTheBoardState() async {
    final matchResponse = await _protocolGetMatchStatesUsecase();
    if (matchResponse.isLeft()) return left(matchResponse.asLeftResult);
    final matchStates = matchResponse.asRightResult;

    final battleState = BattleCurrentStateModel(
      currentUserId: currentUserTurnId,
      boardState: matchStates.boardState,
      usersInTheMatchState: matchStates.usersInTheMatchState,
    );

    return right(battleState);
  }

  FutureOr<Either<MatchFailure, List<Coordenate>>> getPieceValidMovimentation(
      Coordenate coordenate) {
    final moveParam = GetPieceValidMovesParam(coordenate: coordenate);
    return _getPieceValidMovimentation(moveParam);
  }

  FutureOr<Either<MatchFailure, List<Coordenate>>> getPieceValidAttacks(
      Coordenate coordenate) {
    final moveParam = GetPieceValidMovesParam(coordenate: coordenate);
    return _getPieceValidAttacks(moveParam);
  }
}
