import 'package:dartz/dartz.dart';
import 'protocol_remove_piece_in_coordenate_usecase.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/core/usecase_contract.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_piece_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/remove_piece_in_coordenate_usecase/param_remove_piece_in_coordenate_usecase.dart';

class ImplRemovePieceInCoordenateUsecase
    implements ProtocolRemovePieceInCoordenateUsecase {
  final ProtocolPieceRepository _repository;

  const ImplRemovePieceInCoordenateUsecase({
    required ProtocolPieceRepository boardRepository,
  }) : _repository = boardRepository;

  @override
  Either<MatchFailure, VoidSucess> call(
    ParamRemovePieceInCoordenateUsecase param,
  ) {
    final destinyPieceResponse =
        _repository.removePieceInCoordenate(param.coordenate);
    if (destinyPieceResponse.isLeft()) return destinyPieceResponse.asLeft();
    return right(VoidSucess());
  }
}
