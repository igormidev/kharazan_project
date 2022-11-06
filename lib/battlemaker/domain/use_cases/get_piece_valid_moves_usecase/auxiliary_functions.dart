part of 'protocol_get_piece_valid_moves_usecase.dart';

/// Returns a list of coordenates of the [rightList] `that` can
List<Coordenate> getLeftJoinCoordenates(
  List<Coordenate> leftList,
  List<Coordenate> rightList,
) {
  return rightList.where((coordenate) {
    final isNotOverflowMaxX = coordenate.axisX < leftList.biggerXInList;
    final isNotOverflowMinX = coordenate.axisX > leftList.minimalXInList;

    final isNotOverflowMaxY = coordenate.axisY < leftList.biggerYInList;
    final isNotOverflowMinY = coordenate.axisY > leftList.minimalYInList;

    final dontHaveOverflowInXAxis = isNotOverflowMaxX && isNotOverflowMinX;
    final dontHaveOverflowInYAxis = isNotOverflowMaxY && isNotOverflowMinY;
    final isInsideCoordenatesLimits =
        dontHaveOverflowInXAxis && dontHaveOverflowInYAxis;

    return isInsideCoordenatesLimits;
  }).toList();
}
