// import 'package:micro_kharazan/battlemaker/data/dto/board_dto.dart';
// import 'package:micro_kharazan/battlemaker/domain/entities/animation_type.dart';
// import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';

// import 'package:dartz/dartz.dart';
// import 'package:micro_kharazan/core/utils/extensions.dart';
// import 'param_obtain_pieces_status_after_move_usecase.dart';
// import 'protocol_obtain_pieces_status_after_move_usecase.dart';
// import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';

// class ImplObtainPiecesStatusAfterMoveUsecase
//     extends ProtocolObtainPiecesStatusAfterMoveUsecase {
//   @override
//   Either<MatchFailure, List<AnimationInField>> call(
//       ParamObtainPiecesStatusAfterMoveUsecase param) {
//     final List<AnimationInField> currentEntities = param.entities;
//     final CoordenatesInMove coordenatesInMove;
//     try {
//       coordenatesInMove = CoordenatesInMove.fromString(param.move);
//     } catch (_) {
//       return left(MatchFailure.castingCoordenateError());
//     }

//     // Obtaining the pieces and handling with the possible errors
//     final originPiece = currentEntities.firstWhereOrNull(
//         (element) => element.entity.coordenate == coordenatesInMove.origin);
//     final destinyPiece = currentEntities.firstWhereOrNull(
//         (element) => element.entity.coordenate == coordenatesInMove.destiny);
//     if (originPiece == null) return left(NoEntityFoundInCoordenate());

//     final indexOfOrigin = currentEntities.indexOf(originPiece);

//     // If destiny is null, the move is a attack. It's just changing piece position otherwise
//     if (destinyPiece != null) {
//       final willKillPieceInDestiny =
//           destinyPiece.entity.piece.life > originPiece.entity.piece.damage;

//       final finalCoordenateAfterMove = willKillPieceInDestiny
//           ? coordenatesInMove.destiny
//           : coordenatesInMove.origin;

//       currentEntities[indexOfOrigin] = AnimationInField.piece(
//         uniqueId: originPiece.uniqueId,
//         entity:
//             originPiece.entity.copyWith(coordenate: finalCoordenateAfterMove),
//       );
//     } else {
//       currentEntities[indexOfOrigin] = AnimationInField.piece(
//         uniqueId: originPiece.uniqueId,
//         entity:
//             originPiece.entity.copyWith(coordenate: coordenatesInMove.destiny),
//       );
//     }

//     // Return the list, with the origin/destiny animation aplied
//     return right(currentEntities);
//   }
// }
