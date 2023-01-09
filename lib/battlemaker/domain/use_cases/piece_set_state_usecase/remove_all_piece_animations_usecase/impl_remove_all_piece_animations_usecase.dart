import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/states/piece_state.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_piece_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/remove_all_piece_animations_usecase/protocol_remove_all_piece_animations_usecase.dart';

class ImplRemoveAllPieceAnimationsUsecase
    implements ProtocolRemoveAllPieceAnimationsUsecase {
  final ProtocolPieceRepository _protocolPieceRepository;

  const ImplRemoveAllPieceAnimationsUsecase({
    required ProtocolPieceRepository pieceRepository,
  }) : _protocolPieceRepository = pieceRepository;

  @override
  Either<MatchFailure, VoidSucess> call() {
    final piecesResponse = _protocolPieceRepository.obtainPiecesInTheBoard();
    if (piecesResponse.isLeft()) return piecesResponse.asLeft();
    final List<BoardPieceEntity> piecesWithAnimation = piecesResponse
        .asRightResult
        .where((element) => element.pieceState is! DefaultPieceState)
        .toList();

    for (var animationState in piecesWithAnimation) {
      final updateResponse = _protocolPieceRepository.updatePieceEntityWithId(
        boardId: animationState.boardId,
        boardPieceEntity: (currentEntity) => animationState.copyWith(
          pieceState: PieceState.normal(
            piece: animationState.pieceState.piece,
          ),
        ),
      );

      if (updateResponse.isLeft()) {
        return left(updateResponse.asLeftResult);
      }
    }

    return right(VoidSucess());
  }
}
