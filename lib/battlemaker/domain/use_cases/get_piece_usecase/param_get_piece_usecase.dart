import 'package:equatable/equatable.dart';

class GetPieceParam extends Equatable {
  final String boardId;
  const GetPieceParam({required this.boardId});

  @override
  List<Object?> get props => [boardId];
}
