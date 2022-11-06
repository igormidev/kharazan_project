import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:micro_kharazan/battlemaker/core/core_extensions.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'param_get_piece_valid_moves_usecase.dart';
part 'auxiliary_functions.dart';

abstract class ProtocolGetPieceValidMovesUsecase {
  /// Returns a list of the possible moves that the piece can make
  FutureOr<Either<MatchFailure, List<Coordenate>>> call(
      GetPieceValidMovesParam param);
}
