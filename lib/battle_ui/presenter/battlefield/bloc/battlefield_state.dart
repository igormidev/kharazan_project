part of 'battlefield_bloc.dart';

@freezed
class BattlefieldState with _$BattlefieldState {
  const factory BattlefieldState.initial(List<PieceEntity> pieces) =
      _BattlefieldInitialState;
}
