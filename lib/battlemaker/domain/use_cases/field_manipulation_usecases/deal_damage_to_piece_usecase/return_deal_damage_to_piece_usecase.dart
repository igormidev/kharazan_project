import 'package:equatable/equatable.dart';

class ReturnDealDamageToPieceUsecase extends Equatable {
  final bool didDamageKillTargetPiece;
  const ReturnDealDamageToPieceUsecase({
    required this.didDamageKillTargetPiece,
  });

  @override
  List<Object> get props => [didDamageKillTargetPiece];
}
