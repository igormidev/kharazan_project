// part of 'package:micro_kharazan/battlemaker/domain/builders/move_builder.dart';

// mixin DealDamageToPiece {
//   abstract final MoveActions _moveAction;

//   SwithToSetDamageInterface dealDamageToPieceWithId(
//     String id,
//     int damage,
//   ) {
//     final param = DealDamageToPieceParam(
//       uniquePieceEntityId: id,
//       damage: damage,
//     );
//     final dealDamageResponse = _moveAction._dealDamageToPieceUsecase(param);
//     if (dealDamageResponse.isLeft()) {
//       _moveAction.failure = dealDamageResponse.asLeftResult;
//     }

//     final didDamageKillTargetPiece =
//         dealDamageResponse.asRightResult.didDamageKillTargetPiece;

//     return SwithToSetDamageInterface(
//       moveActions: _moveAction,
//       willExecuteDamageNonFatalCase: didDamageKillTargetPiece == false,
//       willExecuteDamageFatalCase: didDamageKillTargetPiece == true,
//     );
//   }
// }
