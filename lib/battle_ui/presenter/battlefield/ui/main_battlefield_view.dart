import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_kharazan/battle_ui/core/mock_pieces.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/bloc/battlefield_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/stages/coliseum_map.dart';
import 'package:micro_kharazan/battlemaker/data/repositories/impl_board_repository.dart';
import 'package:micro_kharazan/battlemaker/data/repositories/impl_match_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_match_state_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/impl_can_user_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/protocol_can_user_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/change_piece_position_usecase/impl_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/change_piece_position_usecase/protocol_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/deal_damage_to_piece_usecase/impl_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/deal_damage_to_piece_usecase/protocol_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/impl_get_match_states_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/protocol_get_match_states_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_usecase/impl_get_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_usecase/protocol_get_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/impl_get_piece_valid_moves_attack_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/impl_get_piece_valid_movimentation_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/impl_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/protocol_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/external/source/impl_board_source.dart';
import 'package:micro_kharazan/battlemaker/external/source/impl_match_source.dart';
import 'package:micro_kharazan/battlemaker/presentation/battle_maker_controller.dart';
import 'package:micro_kharazan/sandbox_responsive_framework/sandbox_responsive_framework.dart';

import 'tablet_battlefield_view.dart';
import 'desktop_battlefield_view.dart';
import 'mobile_battlefield_view.dart';

class MainBattlefieldView extends StatelessWidget {
  const MainBattlefieldView({super.key});

  @override
  Widget build(BuildContext context) {
    final boardSource = ImplBoardSource(
      piecesInTheBoard: mockPieces,
      fieldLimits: const ColiseumMap().stageLimits,
    );

    const matchSource = ImplMatchSource(usersInTheGame: [
      UserStateEntity(playerId: 'play1', currentMana: 50),
      UserStateEntity(playerId: 'bot', currentMana: 50),
    ]);

    final ProtocolBoardRepository boardRepo = ImplBoardRepository(boardSource);
    const ProtocolMatchStateRepository matchRepo =
        ImplMatchRepository(matchSource: matchSource);

    final getValidMoves =
        ImplGetPieceValidMovimentationUsecase(boardRepository: boardRepo);
    final getValidAttacks =
        ImplGetPieceValidMovesAttackUsecase(boardRepository: boardRepo);

    final ProtocolGetMatchStatesUsecase getMatchStates =
        ImplGetMatchStatesUsecase(
      boardRepository: boardRepo,
      matchRepository: matchRepo,
    );
    final ProtocolChangePiecePositionUsecase changePiecePositionUsecase =
        ImplChangePiecePositionUsecase(boardRepository: boardRepo);
    final ProtocolDealDamageToPieceUsecase dealDamageToPiece =
        ImplDealDamageToPieceUsecase(boardRepository: boardRepo);
    const ProtocolCanUserMakeMoveUsecase canUserMakeMove =
        ImplCanUserMakeMoveUsecase(matchStateRepository: matchRepo);
    final ProtocolGetPieceUsecase getPiece =
        ImplGetPieceUsecase(boardRepository: boardRepo);

    final ProtocolMakeMoveUsecase makeMoveUsecase = ImplMakeMoveUsecase(
      getMatchStatesUsecase: getMatchStates,
      changePiecePositionUsecase: changePiecePositionUsecase,
      dealDamageToPieceUsecase: dealDamageToPiece,
      canUserMakeMoveUsecase: canUserMakeMove,
      getPieceUsecase: getPiece,
    );

    final ProtocolGetMatchStatesUsecase getMatchStatesUsecase =
        ImplGetMatchStatesUsecase(
      boardRepository: boardRepo,
      matchRepository: matchRepo,
    );

    final controller = BattleMakerController.createMatch(
      firstUserToMoveId: 'play1',
      makeMoveUsecase: makeMoveUsecase,
      protocolGetMatchStatesUsecase: getMatchStatesUsecase,
      getPieceValidAttacks: getValidAttacks,
      getPieceValidMovimentation: getValidMoves,
    );

    return BlocProvider(
      create: (_) => BattlefieldBloc(battleController: controller),
      child: const ResponsiveDeviceSplitter(
        mobile: MobileBattlefieldView(),
        tablet: TabletBattlefieldView(),
        desktop: DesktopBattlefieldView(),
      ),
    );
  }
}
