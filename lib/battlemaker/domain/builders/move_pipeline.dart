// import 'package:dartz/dartz.dart';
// import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
// import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
// import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
// import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/change_piece_position_usecase/param_change_piece_position_usecase.dart';
// import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/change_piece_position_usecase/protocol_change_piece_position_usecase.dart';
// import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/deal_damage_to_piece_usecase/protocol_deal_damage_to_piece_usecase.dart';
// import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/remove_piece_in_coordenate_usecase/protocol_remove_piece_in_coordenate_usecase.dart';
// import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/remove_all_piece_animations_usecase/protocol_remove_all_piece_animations_usecase.dart';
// import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_change_position_animation_state_usecase/protocol_update_piece_to_change_position_animation_state_usecase.dart';
// import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_fatal_attack_animation_state_usecase/protocol_update_piece_to_making_fatal_attack_animation_state_usecase.dart';
// import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_non_fatal_attack_animation_state_usecase/protocol_update_piece_to_making_non_fatal_attack_animation_state_usecase.dart';

// class MovePipeLineBuilder {
//   // ==> Field manipulation
//   final ProtocolChangePiecePositionUsecase _changePiecePositionUsecase;
//   final ProtocolDealDamageToPieceUsecase _dealDamageToPieceUsecase;

//   // ==> Pieces animations setters usecases
//   final ProtocolUpdatePieceToChangePositionAnimationStateUsecase
//       _updatePieceToChangePositionAnimationStateUsecase;
//   final ProtocolUpdatePieceToMakingNonFatalAttackAnimationStateUsecase
//       _updatePieceToMakingNonFatalAttackAnimationStateUsecase;
//   final ProtocolUpdatePieceToMakingFatalAttackAnimationStateUsecase
//       _updatePieceToMakingFatalAttackAnimationStateUsecase;
//   final ProtocolRemovePieceInCoordenateUsecase _removePieceInCoordenateUsecase;
//   final ProtocolRemoveAllPieceAnimationsUsecase
//       _removeAllPieceAnimationsUsecase;

//   Either<MatchFailure, MovePipeLineBuilder> initMovePipeLine() {
//     return right(this);
//   }
// }

// void letsTest() {
//   final moveBuiler = MovePipeLineBuilder();
//   const coordenate = Coordenate(8, 8);
//   moveBuiler
//       .initMovePipeLine()
//       .addDamageIndicatorInCoordenate(3, coordenate)
//       .removePieceWithId(coordenate)
//       .changePiecePositionById(coordenate, coordenate)
//       .dealDamageToPieceWithId('123', 2)
//       .configureDealDamageCases(
//         onFatalDamageToTargetPiece: (pipe) => pipe
//             .initMovePipeLine()
//             .addDamageIndicatorInCoordenate(3, coordenate)
//             .removePieceWithId(coordenate),
//         onNotFatalDamageToTargetPiece: (pipe) => pipe
//             .initMovePipeLine()
//             .addDamageIndicatorInCoordenate(3, coordenate)
//             .removePieceWithId(coordenate),
//       )
//       .addDamageIndicatorInCoordenate(2, coordenate);
// }

// typedef PipeResult = Either<MatchFailure, MovePipeLineBuilder>;

// extension PipeResultExtension on PipeResult {
//   PipeResult changePiecePositionById(
//     Coordenate oldPosition,
//     Coordenate newPosition,
//   ) {
//     if (isLeft()) return asLeft();
//     return _changePiecePositionById(oldPosition, newPosition, asRightResult);
//   }

//   PipeResult removePieceWithId(Coordenate coordenate) {
//     if (isLeft()) return asLeft();
//     return _removePieceWithId(coordenate, asRightResult);
//   }

//   PipeResult addDamageIndicatorInCoordenate(int damage, Coordenate coordenate) {
//     if (isLeft()) return asLeft();
//     return _addDamageIndicatorInCoordenate(damage, coordenate, asRightResult);
//   }

//   SetterDealDamageCase dealDamageToPieceWithId(String id, int damage) {
//     return SetterDealDamageCase(this, true);
//   }
// }

// PipeResult _changePiecePositionById(
//   Coordenate oldPosition,
//   Coordenate newPosition,
//   MovePipeLineBuilder currentPipe,
// ) {
//   return currentPipe
//       ._changePiecePositionUsecase(
//         ChangePiecePositionParam(
//           originCoordenate: oldPosition,
//           destinyCoordenate: newPosition,
//         ),
//       )
//       .castRight((_) => currentPipe);
// }

// PipeResult _removePieceWithId(
//   Coordenate coordenate,
//   MovePipeLineBuilder currentPipe,
// ) {
//   throw UnimplementedError();
// }

// PipeResult _addDamageIndicatorInCoordenate(
//   int damage,
//   Coordenate coordenate,
//   MovePipeLineBuilder currentPipe,
// ) {
//   throw UnimplementedError();
// }

// // PipeResult _dealDamageToPieceWithId(
// //   String id,
// //   int damage,
// //   MovePipeLineBuilder currentPipe,
// // ) {
// //   throw UnimplementedError();
// // }

// class SetterDealDamageCase {
//   final PipeResult currentPipe;
//   final bool _wasDamageFatalToTargetPiece;
//   const SetterDealDamageCase(
//     this.currentPipe,
//     this._wasDamageFatalToTargetPiece,
//   );

//   PipeResult configureDealDamageCases({
//     required PipeResult Function(MovePipeLineBuilder pipe)
//         onFatalDamageToTargetPiece,
//     required PipeResult Function(MovePipeLineBuilder pipe)
//         onNotFatalDamageToTargetPiece,
//   }) {
//     if (currentPipe.isLeft()) return currentPipe.asLeft();

//     if (_wasDamageFatalToTargetPiece) {
//       return onFatalDamageToTargetPiece(currentPipe.asRightResult);
//     } else {
//       return onNotFatalDamageToTargetPiece(currentPipe.asRightResult);
//     }
//   }
// }
