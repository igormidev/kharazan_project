part of 'battlefield_bloc.dart';

@freezed
class BattlefieldEvent with _$BattlefieldEvent {
  const factory BattlefieldEvent.pieceSelected() = _BattlefieldPieceSelected;
}
