import 'package:freezed_annotation/freezed_annotation.dart';

part 'animation_types.freezed.dart';

@freezed
class AnimationTypes with _$AnimationTypes {
  factory AnimationTypes.attack({
    required Duration duration,
    required String entity,
    required String uniqueId,
  }) = _Piece;
}
