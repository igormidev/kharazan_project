import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/entities/piece_entity.dart';

part 'piece_state.freezed.dart';

@freezed
class PieceState with _$PieceState {
  const factory PieceState.normal({
    required PieceEntity piece,
  }) = DefaultPieceState;

  const factory PieceState.pieceChangingPosition({
    required PieceEntity piece,
    required Duration animationTime,
    required Coordenate originCoordenate,
    required Coordenate destinyCoordenate,
  }) = _PieceChangePosition;

  const factory PieceState.pieceMakingFatalAttack({
    required PieceEntity piece,
    required Duration animationTime,
    required Coordenate originCoordenate,
    required Coordenate destinyCoordenate,
  }) = _PieceAttackMove;

  const factory PieceState.pieceMakingNonFatalAttack({
    required PieceEntity piece,
    required Duration animationTime,
    required Coordenate originCoordenate,
    required Coordenate destinyCoordenate,
  }) = _PieceNonFatalAttackMove;
}
