import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micro_kharazan/battle_ui/core/mock_pieces.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/param_get_piece_valid_moves_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/protocol_get_piece_valid_moves_usecase.dart';
import 'package:micro_kharazan/battlemaker/presentation/battle_maker_controller.dart';

part 'battlefield_event.dart';
part 'battlefield_state.dart';

part 'battlefield_bloc.freezed.dart';

class BattlefieldBloc extends Bloc<BattlefieldEvent, BattlefieldState> {
  final ProtocolGetPieceValidMovesUsecase getPieceValidMovimentation;
  final ProtocolGetPieceValidMovesUsecase getPieceValidAttacks;
  final BattleMakerController controller;
  BattlefieldBloc({
    required this.getPieceValidAttacks,
    required this.getPieceValidMovimentation,
    required this.controller,
  }) : super(const BattlefieldState.initial(pieces: mockPieces)) {
    on<_BattlefieldPieceSelected>(_manegePieceSelection);
    on<_SetPieces>(_setPiecesInBoard);

    controller.outEvents.listen((event) {
      event.when<void>(
        moveMaked: _onMoveMaked,
        surrender: _onSurrender,
        passTurnOtherToUser: _onPassTurnToOtherUser,
        errorOccoured: _oFailure,
      );
    });
  }

  void _onMoveMaked(
    CoordenatesInMove coordenatesInMove,
    String moveMaded,
    List<BoardEntity> entities,
    List<UserStateEntity> userState,
  ) {}

  void _onSurrender(String userThatSurrenderID) {}

  void _onPassTurnToOtherUser(String userTurnID) {}

  void _oFailure(MatchFailure failure) {}

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
    final moveParam = GetPieceValidMovesParam(coordenate: event.coordenate);

    final possibleAttacksResponse = await getPieceValidAttacks(moveParam);
    if (possibleAttacksResponse.isLeft()) {
      emit(BattlefieldState.withError(
        failure: possibleAttacksResponse.asLeftResult,
        pieces: state.pieces,
      ));
    }

    final possibleMovesResponse = await getPieceValidMovimentation(moveParam);
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
