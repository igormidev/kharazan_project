// // ignore_for_file: file_names
// part of 'package:micro_kharazan/battlemaker/domain/builders/move_builder.dart';

// class SetDealDamageFatalCase
//     with
//         RemovePieceWithId<SetDealDamageFatalCase>,
//         ChangePiecePosition<SetDealDamageFatalCase> {
//   SetDealDamageFatalCase({
//     required MoveActions moveAction,
//     required bool willExecuteDamageFatalCase,
//   }) : _moveAction = moveAction;

//   @override
//   final MoveActions _moveAction;

//   // ┌─────────────────────────────────────────────────────────
//   // │ Update the state of the piece to a fatal attack animation
//   // └─────────────────────────────────────────────────────────
//   SetDealDamageFatalCase putFatalPieceAttackAnimationWithId({
//     required String uniqueBoardId,
//     required Coordenate origin,
//     required Coordenate destiny,
//   }) {
//     final pieceAttackParam =
//         ParamUpdatePieceToMakingFatalAttackAnimationStateUsecase(
//       uniquePieceEntityId: uniqueBoardId,
//       originCoordenate: origin,
//       destinyCoordenate: destiny,
//     );
//     final pieceAttackResponse = _moveAction
//         ._updatePieceToMakingFatalAttackAnimationStateUsecase(pieceAttackParam);
//     if (pieceAttackResponse.isLeft()) {
//       _moveAction.failure = pieceAttackResponse.asLeftResult;
//     }

//     return this;
//   }

//   SetDealDamageFatalCase putDestructionAnimationInPieceWithId(String id) {
//     // TODO: implement putDestructionAnimationInPieceWithId
//     throw UnimplementedError();
//   }

//   MoveActions exitDealDamageCases() {
//     return _moveAction;
//   }
// }
