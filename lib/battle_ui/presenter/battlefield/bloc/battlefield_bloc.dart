import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micro_kharazan/battle_ui/core/constants.dart';
import 'package:micro_kharazan/battle_ui/domain/usecases/change_piece_coordenate_usecase/protocol_change_piece_coordenate_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/animation_type.dart';
import 'package:micro_kharazan/battle_ui/domain/usecases/obtain_pieces_status_after_move_usecase/param_obtain_pieces_status_after_move_usecase.dart';
import 'package:micro_kharazan/battle_ui/domain/usecases/obtain_pieces_status_after_move_usecase/protocol_obtain_pieces_status_after_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/wrap_piece_in_move_with_animation_model/param_wrap_piece_in_move_with_animation_model_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/wrap_piece_in_move_with_animation_model/protocol_wrap_piece_in_move_with_animation_model_usecase.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/piece_entity.dart';
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
  final ProtocolChangePieceCoordenateUsecase changePieceInCoordenate;
  final ProtocolWrapPieceInMoveWithAnimationModelUsecase
      withPieceInMoveAnimationModelUsecase;
  final ProtocolObtainPiecesStatusAfterMoveUsecase
      obtainPiecesStatusAfterMoveUsecase;

  Stream<MatchEvent> get events => _battleController.outEvents;

  BattlefieldBloc({
    required BattleMakerController battleController,
    required List<AnimationInField> entities,
    required List<UserStateEntity> usersInTheGame,
    required this.changePieceInCoordenate,
    required this.withPieceInMoveAnimationModelUsecase,
    required this.obtainPiecesStatusAfterMoveUsecase,
  })  : _battleController = battleController,
        super(BattlefieldState.normal(
          entities: entities,
          users: usersInTheGame,
        )) {
    // ==> Move handlers <==

    on<_MakeMoveWithAnimation>(_makeMoveWithAnimation);
    on<_MakeMoveWithoutAnimation>(_makeMoveWithoutAnimation);
    on<_ManegeMoveFromApi>(_manegeMoveFromApi);

    // on<_AttackPieceWithAnimation>(_attackPieceWithAnimation);
    // on<_AttackPieceWithoutAnimation>(_attackPieceWithoutAnimation);
    // on<_ChangePiecePositionWithAnimation>(_changePiecePositionWithAnimation);
    // on<_ChangePiecePositionWithoutAnimation>(
    //     _changePiecePositionWithoutAnimation);

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
    final param = ParamWrapPieceInMoveWithAnimationModelUsecase(
        move: event.moveMaded, entities: state.entities);
    final moveAnimationResponse = withPieceInMoveAnimationModelUsecase(param);

    if (moveAnimationResponse.isLeft()) {
      _getFailureState(moveAnimationResponse);
      return;
    }

    final entitiesWithAnimation = moveAnimationResponse.asRightResult;
    emit(BattlefieldState.normal(
      users: state.users,
      entities: entitiesWithAnimation,
    ));

    await Future.delayed(Constants.changeAttackAnimationTime);
    final realMoveResponse =
        await _battleController.makeMove(event.userId, event.moveMaded);

    if (realMoveResponse.isLeft()) {
      _getFailureState(realMoveResponse);
      return;
    }
  }

  FutureOr<void> _makeMoveWithoutAnimation(
    _MakeMoveWithoutAnimation event,
    Emitter<BattlefieldState> emit,
  ) async {
    final param = ParamObtainPiecesStatusAfterMoveUsecase(
      entities: state.entities,
      move: event.moveMaded,
    );
    final piecesAfterMoveResponse = obtainPiecesStatusAfterMoveUsecase(param);

    if (piecesAfterMoveResponse.isLeft()) {
      _getFailureState(piecesAfterMoveResponse);
      return;
    }

    final piecesAfterMove = piecesAfterMoveResponse.asRightResult;
    emit(BattlefieldState.normal(
      users: state.users,
      entities: piecesAfterMove,
    ));

    await Future.delayed(Constants.changeAttackAnimationTime);
    final realMoveResponse =
        await _battleController.makeMove(event.userId, event.moveMaded);

    if (realMoveResponse.isLeft()) {
      _getFailureState(realMoveResponse);
      return;
    }
  }

  FutureOr<void> _manegeMoveFromApi(
    _ManegeMoveFromApi event,
    Emitter<BattlefieldState> emit,
  ) async {
    // Is the same list? Is state the same?
    //   final currentBoard = state.entities.map((e) => e.entity).toList();
    //   final eventBoard = List.from([...event.boardState]);
    //   final isSameBoard = listEquals(eventBoard, currentBoard);
    //   if (isSameBoard == false) {
    //     final param = ParamObtainPiecesStatusAfterMoveUsecase(
    //       entities: state.entities,
    //       move: event.coordenatesInMove.castToString,
    //     );
    //     final piecesAfterMoveResponse = obtainPiecesStatusAfterMoveUsecase(param);

    //     if (piecesAfterMoveResponse.isLeft()) {
    //       _getFailureState(piecesAfterMoveResponse);
    //       return;
    //     }

    //     final piecesAfterMove = piecesAfterMoveResponse.asRightResult;
    //     emit(BattlefieldState.normal(
    //       users: state.users,
    //       entities: piecesAfterMove,
    //     ));
    //   }
  }

  // ==> End Move handlers <==

  FutureOr<void> _surrender(
    _Surrender event,
    Emitter<BattlefieldState> emit,
  ) {}

  FutureOr<void> _passTurn(
    _PassTurn event,
    Emitter<BattlefieldState> emit,
  ) {}

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
        _battleController.getPieceValidAttacks(event.coordenate);
    if (possibleAttacksResponse.isLeft()) {
      emit(_getFailureState(possibleAttacksResponse));
      return;
    }

    final possibleMovesResponse =
        _battleController.getPieceValidMovimentation(event.coordenate);
    if (possibleMovesResponse.isLeft()) {
      emit(_getFailureState(possibleMovesResponse));
      return;
    }

    final possibleMovimentation = possibleMovesResponse.asRightResult;
    final possibleAttacks = possibleAttacksResponse.asRightResult;

    emit(BattlefieldState.pieceSelected(
      possiblePieceAttackArea: possibleAttacks,
      possiblePieceMovementArea: possibleMovimentation,
      entities: state.entities,
      users: state.users,
      selectedPieceCoordenate: event.coordenate,
    ));
  }

  // ==> Auxiliar functions <==

  BattlefieldState _getFailureState<T>(
    Either<MatchFailure, T> failure, [
    List<AnimationInField>? enitites,
  ]) {
    return BattlefieldState.withError(
      failure: failure.asLeftResult,
      users: state.users,
      entities: enitites ?? state.entities,
    );
  }
}
