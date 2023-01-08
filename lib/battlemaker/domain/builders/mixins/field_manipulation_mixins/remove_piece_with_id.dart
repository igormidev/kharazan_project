// part of 'package:micro_kharazan/battlemaker/domain/builders/move_builder.dart';

// mixin RemovePieceWithId<T> {
//   abstract final MoveActions _moveAction;

//   // ┌─────────────────────────────────────────────────────────
//   // │ Remove the piece in the board if the damage is fatal
//   // └─────────────────────────────────────────────────────────
//   T removePieceWithId(Coordenate coordenate) {
//     assert(this is T);

//     final removePieceParam =
//         ParamRemovePieceInCoordenateUsecase(coordenate: coordenate);

//     final removePieceInCoordenateResponse =
//         _moveAction._removePieceInCoordenateUsecase(removePieceParam);

//     if (removePieceInCoordenateResponse.isLeft()) {
//       _moveAction.failure = removePieceInCoordenateResponse.asLeftResult;
//     }

//     return this as T;
//   }
// }
