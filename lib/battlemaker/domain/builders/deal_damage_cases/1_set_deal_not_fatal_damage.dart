// // ignore_for_file: file_names
// part of 'package:micro_kharazan/battlemaker/domain/builders/move_builder.dart';

// class SetDealDamageNonFatal
//     with PutChangePieceAnimationPosition<SetDealDamageNonFatal> {
//   SetDealDamageNonFatal({
//     required MoveActions moveActions,
//     required bool willExecuteDamageNonFatalCase,
//     required bool willExecuteDamageFatalCase,
//   })  : _moveAction = moveActions,
//         _willExecuteDamageFatalCase = willExecuteDamageFatalCase,
//         _willExecuteDamageNonFatalCase = willExecuteDamageNonFatalCase;

//   @override
//   final MoveActions _moveAction;

//   final bool _willExecuteDamageNonFatalCase;
//   final bool _willExecuteDamageFatalCase;

//   // ┌─────────────────────────────────────────────────────────
//   // │ Update the state of the piece to a NOT fatal attack animation
//   // └─────────────────────────────────────────────────────────
//   SetDealDamageNonFatal putNonFatalPieceAttackAnimationWithId({
//     required String uniqueBoardId,
//     required Coordenate origin,
//     required Coordenate destiny,
//   }) {
//     if (_willExecuteDamageNonFatalCase == false) return this;
//     final pieceAttackParam =
//         ParamUpdatePieceToMakingNonFatalAttackAnimationStateUsecase(
//       uniquePieceEntityId: uniqueBoardId,
//       originCoordenate: origin,
//       destinyCoordenate: destiny,
//     );
//     final pieceAttackResponse =
//         _moveAction._updatePieceToMakingNonFatalAttackAnimationStateUsecase(
//       pieceAttackParam,
//     );

//     if (pieceAttackResponse.isLeft()) {
//       _moveAction.failure = pieceAttackResponse.asLeftResult;
//     }
//     return this;
//   }

//   SetDealDamageFatalCase setIfDamageKillTargetPiece() {
//     return SetDealDamageFatalCase(
//       moveAction: _moveAction,
//       willExecuteDamageFatalCase: _willExecuteDamageFatalCase,
//     );
//   }
// }
