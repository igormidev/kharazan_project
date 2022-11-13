import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micro_kharazan/battle_ui/core/mock_pieces.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/presentation/battle_maker_controller.dart';
import 'package:micro_kharazan/battlemaker/presentation/match_event.dart';

part 'battlefield_event.dart';
part 'battlefield_state.dart';

part 'battlefield_bloc.freezed.dart';

class BattlefieldBloc extends Bloc<BattlefieldEvent, BattlefieldState> {
  final BattleMakerController _battleController;

  Stream<MatchEvent> get events => _battleController.outEvents;

  BattlefieldBloc({required BattleMakerController battleController})
      : _battleController = battleController,
        super(const BattlefieldState.initial(pieces: mockPieces)) {
    on<_BattlefieldPieceSelected>(_manegePieceSelection);
    on<_SetPieces>(_setPiecesInBoard);

    battleController.outEvents.listen((event) {
      // event.when<void>(
      //   moveMaked: _onMoveMaked,
      //   surrender: _onSurrender,
      //   passTurnOtherToUser: _onPassTurnToOtherUser,
      //   errorOccoured: _onFailure,
      // );
    });
  }

  // Future<void> _onMoveMaked(
  //   CoordenatesInMove coordenatesInMove,
  //   String moveMaded,
  //   List<BoardEntity> entities,
  //   List<UserStateEntity> userState,
  // ) async {
  //   final response = await battleController.makeMove('userId', '23 84');
  //   // emit();
  //   if (response.isLeft()) {
  //     emit(BattlefieldState.withError(
  //       failure: response.asLeftResult,
  //       pieces: state.pieces,
  //     ));
  //     // emit(BattlefieldState.initial(pieces: event.pieces));
  //   }
  // }

  void _onSurrender(String userThatSurrenderID) {}

  void _onPassTurnToOtherUser(String userTurnID) {}

  void _onFailure(MatchFailure failure) {}

  FutureOr<void> _setPiecesInBoard(
    _SetPieces event,
    Emitter<BattlefieldState> emit,
  ) {
    emit(BattlefieldState.initial(pieces: event.pieces));
  }

  FutureOr<void> _manegePieceSelection(
    _BattlefieldPieceSelected event,
    Emitter<BattlefieldState> emit,
  ) async {
    final possibleAttacksResponse =
        await _battleController.getPieceValidAttacks(event.coordenate);
    if (possibleAttacksResponse.isLeft()) {
      emit(BattlefieldState.withError(
        failure: possibleAttacksResponse.asLeftResult,
        pieces: state.pieces,
      ));
    }

    final possibleMovesResponse =
        await _battleController.getPieceValidMovimentation(event.coordenate);
    if (possibleMovesResponse.isLeft()) {
      emit(BattlefieldState.withError(
        failure: possibleMovesResponse.asLeftResult,
        pieces: state.pieces,
      ));
    }

    final possibleMovimentation = possibleMovesResponse.asRightResult;
    final possibleAttacks = possibleAttacksResponse.asRightResult;

    emit(BattlefieldState.pieceSelected(
      possiblePieceAttackArea: possibleAttacks,
      possiblePieceMovementArea: possibleMovimentation,
      pieces: state.pieces,
    ));
  }
}
