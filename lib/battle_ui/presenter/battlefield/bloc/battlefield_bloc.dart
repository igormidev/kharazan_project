import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/piece_entity.dart';

part 'battlefield_event.dart';
part 'battlefield_state.dart';

part 'battlefield_bloc.freezed.dart';

class BattlefieldBloc extends Bloc<BattlefieldEvent, BattlefieldState> {
  BattlefieldBloc() : super(const BattlefieldState.initial(<PieceEntity>[]));
}
