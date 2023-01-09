import 'package:equatable/equatable.dart';

class GetPieceValidMovesParam extends Equatable {
  final String boardId;

  const GetPieceValidMovesParam({required this.boardId});

  @override
  List<Object?> get props => [boardId];
}
