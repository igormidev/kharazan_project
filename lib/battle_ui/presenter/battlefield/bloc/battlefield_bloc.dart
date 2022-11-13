import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micro_kharazan/battle_ui/core/mock_pieces.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/presentation/battle_maker_controller.dart';
import 'package:micro_kharazan/battlemaker/presentation/match_event.dart';

part 'battlefield_event.dart';
part 'battlefield_state.dart';

part 'battlefield_bloc.freezed.dart';

class BattlefieldBloc extends Bloc<BattlefieldEvent, BattlefieldState> {
  final BattleMakerController _battleController;

  Stream<MatchEvent> get events => _battleController.outEvents;

  BattlefieldBloc({
    required BattleMakerController battleController,
    required List<BoardEntity> pieces,
    required List<UserStateEntity> usersInTheGame,
  })  : _battleController = battleController,
        super(BattlefieldState.initial(
            pieces: mockPieces, users: usersInTheGame)) {
    on<_BattlefieldPieceSelected>(_manegePieceSelection);
    on<_SetPieces>(_setPiecesInBoard);
    on<_OnMoveMaked>(_makeMove);
    on<_Surrender>(_surrender);
    on<_PassTurn>(_passTurn);
    on<_NotificateFailure>(_notificateFailure);
  }

  void _makeMove(
    _OnMoveMaked event,
    Emitter<BattlefieldState> emit,
  ) async {
    final String userId = event.userId;
    final String moveMaded = event.moveMaded;

    final response = await _battleController.makeMove(userId, moveMaded);
    if (response.isLeft()) emit(_getFailureState(response));
  }

  void _surrender(
    _Surrender event,
    Emitter<BattlefieldState> emit,
  ) {
    // TODO: Implement surrender
    // final String userThatSurrenderID = event.userThatSurrenderID;
  }

  FutureOr<void> _passTurn(
    _PassTurn event,
    Emitter<BattlefieldState> emit,
  ) async {
    final String userTurnID = event.userTurnID;
    final response = await _battleController.passUserTurn(userTurnID);
    if (response.isLeft()) {
      emit(_getFailureState(response));
      return;
    }
  }

  void _notificateFailure(
    _NotificateFailure event,
    Emitter<BattlefieldState> emit,
  ) {
    final MatchFailure failure = event.failure;
    emit(BattlefieldState.withError(
      failure: failure,
      users: state.users,
      pieces: state.pieces,
    ));
  }

  void _setPiecesInBoard(
    _SetPieces event,
    Emitter<BattlefieldState> emit,
  ) {
    emit(BattlefieldState.initial(
      pieces: event.pieces,
      users: state.users,
    ));
  }

  void _manegePieceSelection(
    _BattlefieldPieceSelected event,
    Emitter<BattlefieldState> emit,
  ) async {
    final possibleAttacksResponse =
        await _battleController.getPieceValidAttacks(event.coordenate);
    if (possibleAttacksResponse.isLeft()) {
      emit(_getFailureState(possibleAttacksResponse));
      return;
    }

    final possibleMovesResponse =
        await _battleController.getPieceValidMovimentation(event.coordenate);
    if (possibleMovesResponse.isLeft()) {
      emit(_getFailureState(possibleMovesResponse));
      return;
    }

    final possibleMovimentation = possibleMovesResponse.asRightResult;
    final possibleAttacks = possibleAttacksResponse.asRightResult;

    emit(BattlefieldState.pieceSelected(
      possiblePieceAttackArea: possibleAttacks,
      possiblePieceMovementArea: possibleMovimentation,
      pieces: state.pieces,
      users: state.users,
    ));
  }

  // ==> Auxiliar functions <==

  BattlefieldState _getFailureState<T>(Either<MatchFailure, T> failure) {
    return BattlefieldState.withError(
      failure: failure.asLeftResult,
      users: state.users,
      pieces: state.pieces,
    );
  }
}
