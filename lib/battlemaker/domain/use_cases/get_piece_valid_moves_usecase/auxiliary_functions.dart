part of 'protocol_get_piece_valid_moves_usecase.dart';

/// Returns a list of coordenates of the [coordenates] `that` are
/// inside the [fieldLimits].
///
/// So, for this:
/// - x of coordenate cant be bigger of the biggest x of [fieldLimits]
/// - y of coordenate cant be bigger of the biggest y of [fieldLimits]
/// - x of coordenate cant be smaller of the smallest x of [fieldLimits]
/// - y of coordenate cant be smaller of the smallest y of [fieldLimits]
List<Coordenate> getCoordenatesInsideLimits(
  List<Coordenate> fieldLimits,
  List<Coordenate> coordenates,
) {
  if (fieldLimits.isEmpty) return [];
  final biggerXInList = fieldLimits.biggerXInList;
  final minimalXInList = fieldLimits.minimalXInList;
  final biggerYInList = fieldLimits.biggerYInList;
  final minimalYInList = fieldLimits.minimalYInList;

  coordenates.retainWhere((coordenate) {
    final axisX = coordenate.axisX;
    final axisY = coordenate.axisY;
    final dontHaveXOverflow = minimalXInList <= axisX && axisX <= biggerXInList;
    final dontHaveYOverflow = minimalYInList <= axisY && axisY <= biggerYInList;
    return dontHaveXOverflow && dontHaveYOverflow;
  });
  return coordenates;
}
