import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_kharazan/battle_ui/core/mock_pieces.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/bloc/battlefield_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/stages/coliseum_map.dart';
import 'package:micro_kharazan/battlemaker/data/repositories/impl_board_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/impl_get_piece_valid_moves_attack_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/impl_get_piece_valid_movimentation_usecase.dart';
import 'package:micro_kharazan/battlemaker/external/source/impl_board_source.dart';
import 'package:micro_kharazan/sandbox_responsive_framework/sandbox_responsive_framework.dart';

import 'tablet_battlefield_view.dart';
import 'desktop_battlefield_view.dart';
import 'mobile_battlefield_view.dart';

class MainBattlefieldView extends StatelessWidget {
  const MainBattlefieldView({super.key});

  @override
  Widget build(BuildContext context) {
    final source = ImplBoardSource(
      piecesInTheBoard: mockPieces,
      fieldLimits: const ColiseumMap().stageLimits,
    );
    final boardRepo = ImplBoardRepository(source);
    final getValidMoves =
        ImplGetPieceValidMovimentationUsecase(boardRepository: boardRepo);
    final getValidAttacks =
        ImplGetPieceValidMovesAttackUsecase(boardRepository: boardRepo);

    return BlocProvider(
      create: (_) => BattlefieldBloc(
        getPieceValidAttacks: getValidAttacks,
        getPieceValidMovimentation: getValidMoves,
      ),
      child: const ResponsiveDeviceSplitter(
        mobile: MobileBattlefieldView(),
        tablet: TabletBattlefieldView(),
        desktop: DesktopBattlefieldView(),
      ),
    );
  }
}
