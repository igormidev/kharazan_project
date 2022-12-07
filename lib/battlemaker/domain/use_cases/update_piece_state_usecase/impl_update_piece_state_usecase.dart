// import 'dart:async';
// import 'package:dartz/dartz.dart';
// import 'param_update_piece_state_usecase.dart';
// import 'protocol_update_piece_state_usecase.dart';
// import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
// import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
// import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';

// class ImplUpdatePieceStateUsecase implements ProtocolUpdatePieceStateUsecase {
//   final ProtocolBoardRepository _repository;

//   const ImplUpdatePieceStateUsecase({
//     required ProtocolBoardRepository boardRepository,
//   }) : _repository = boardRepository;

//   @override
//   FutureOr<Either<MatchFailure, VoidSucess>> call(
//       ChangeUpdatePieceStateParam param) {
//     final coordenate = param.coordenates;

//     final moveResponse = _repository.updatePieceInCoordenate(
//       coordenate,
//       param.newPieceState,
//     );
//     if (moveResponse.isLeft()) return moveResponse.asLeft();

//     return right(VoidSucess());
//   }
// }
