import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/move_animation_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/presentation/battle_maker_controller.dart';
import 'package:micro_kharazan/battlemaker/presentation/match_event.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
part 'battlefield_event.dart';
part 'battlefield_state.dart';

part 'battlefield_bloc.freezed.dart';

class BattlefieldBloc extends Bloc<BattlefieldEvent, BattlefieldState> {
  final BattleMakerController _battleController;

  Stream<MatchEvent> get events => _battleController.outEvents;

  BattlefieldBloc({
    required BattleMakerController battleController,
    required List<BoardFieldEntity> entities,
    required List<UserStateEntity> usersInTheGame,
  })  : _battleController = battleController,
        super(BattlefieldState.defaultState(
          entities: entities,
          users: usersInTheGame,
        )) {
    // ==> Move handlers <==

    on<_MakeMoveWithAnimation>(_makeMoveWithAnimation);
    on<_UpdateBoardStateAfterMove>(_updateBoardStateAfterMove);
    on<_UnSelectPiece>(_unSelectPiece);

    on<_BattlefieldPieceSelected>(_manegePieceSelection);
    on<_Surrender>(_surrender);
    on<_PassTurn>(_passTurn);
    on<_NotificateFailure>(_notificateFailure);
  }

  // ==> Start Move handlers <==

  FutureOr<void> _makeMoveWithAnimation(
    _MakeMoveWithAnimation event,
    Emitter<BattlefieldState> emit,
  ) async {
    final realMoveResponse = _battleController.makeMove(
      event.playerThatMakedMove,
      event.moveMaded,
    );

    if (realMoveResponse.isLeft()) {
      emit(_getFailureState(realMoveResponse));
      return;
    }
  }

  // ==> End Move handlers <==

  // ==> Start update ui handlers <==

  FutureOr<void> _updateBoardStateAfterMove(
    _UpdateBoardStateAfterMove event,
    Emitter<BattlefieldState> emit,
  ) {
    emit(BattlefieldState.defaultStateWithAnimations(
      users: event.usersInTheMatchState,
      entities: List.from([...event.boardState]),
      animationsInMove: List.from([...event.animationsInMove]),
    ));
  }

  FutureOr<void> _unSelectPiece(
    _UnSelectPiece event,
    Emitter<BattlefieldState> emit,
  ) {
    emit(
      BattlefieldState.defaultState(
        users: state.users,
        entities: state.entities,
      ),
    );
  }

  // ==> End update ui handlers <==

  FutureOr<void> _surrender(
    _Surrender event,
    Emitter<BattlefieldState> emit,
  ) {
    log('surrender');
  }

  FutureOr<void> _passTurn(
    _PassTurn event,
    Emitter<BattlefieldState> emit,
  ) {
    log('pass turn');
  }

  FutureOr<void> _notificateFailure(
    _NotificateFailure event,
    Emitter<BattlefieldState> emit,
  ) {
    // TODO(battlefieldAnimation): Notificate users of failure
  }

  FutureOr<void> _manegePieceSelection(
    _BattlefieldPieceSelected event,
    Emitter<BattlefieldState> emit,
  ) async {
    final possibleAttacksResponse =
        _battleController.getPieceValidAttacks(event.piece.coordenate);
    if (possibleAttacksResponse.isLeft()) {
      emit(_getFailureState(possibleAttacksResponse));
      return;
    }

    final possibleMovesResponse =
        _battleController.getPieceValidMovimentation(event.piece.coordenate);
    if (possibleMovesResponse.isLeft()) {
      emit(_getFailureState(possibleMovesResponse));
      return;
    }

    final possibleMovimentation = possibleMovesResponse.asRightResult;
    final possibleAttacks = possibleAttacksResponse.asRightResult;

    emit(BattlefieldState.pieceSelected(
      possiblePieceAttackArea: possibleAttacks,
      possiblePieceMovementArea: possibleMovimentation,
      entities: List.from([...state.entities]),
      users: List.from([...state.users]),
      selectedPiece: event.piece,
    ));
  }

  // ==> Auxiliar functions <==

  BattlefieldState _getFailureState<T>(
    Either<MatchFailure, T> failure, [
    List<BoardFieldEntity>? enitites,
  ]) {
    return BattlefieldState.withError(
      failure: failure.asLeftResult,
      users: state.users,
      entities: enitites ?? state.entities,
    );
  }
}
