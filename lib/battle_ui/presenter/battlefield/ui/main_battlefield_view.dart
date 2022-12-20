import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_kharazan/battle_ui/core/mock_pieces.dart';
import 'package:micro_kharazan/battlemaker/data/repositories/impl_board_repository.dart';
import 'package:micro_kharazan/battlemaker/data/repositories/impl_piece_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/board_field_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/board_entities/move_animation_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_board_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_piece_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_piece_make_move_usecase/impl_can_piece_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_piece_make_move_usecase/protocol_can_piece_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/define_type_of_move_usecase/impl_define_type_of_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/define_type_of_move_usecase/protocol_define_type_of_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/execute_typed_move_usecase/impl_execute_typed_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/execute_typed_move_usecase/protocol_execute_typed_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/remove_piece_in_coordenate_usecase/impl_remove_piece_in_coordenate_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/remove_piece_in_coordenate_usecase/protocol_remove_piece_in_coordenate_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_move_entities_usecase/impl_get_move_entities_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_move_entities_usecase/protocol_get_move_entities_usecase.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/bloc/battlefield_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/models/stages/coliseum_map.dart';
import 'package:micro_kharazan/battlemaker/data/repositories/impl_match_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/coordenate_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/battlemaker/domain/failures/match_failures.dart';
import 'package:micro_kharazan/battlemaker/domain/repositories/protocol_match_state_repository.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/impl_can_user_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/can_user_make_move_usecase/protocol_can_user_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/change_piece_position_usecase/impl_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/change_piece_position_usecase/protocol_change_piece_position_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/deal_damage_to_piece_usecase/impl_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/field_manipulation_usecases/deal_damage_to_piece_usecase/protocol_deal_damage_to_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/impl_get_match_states_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_match_states_usecase/protocol_get_match_states_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_usecase/impl_get_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_usecase/protocol_get_piece_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/impl_get_piece_valid_moves_attack_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/get_piece_valid_moves_usecase/impl_get_piece_valid_movimentation_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/impl_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/make_move_usecase/protocol_make_move_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/remove_all_piece_animations_usecase/impl_remove_all_piece_animations_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/remove_all_piece_animations_usecase/protocol_remove_all_piece_animations_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_change_position_animation_state_usecase/impl_update_piece_to_change_position_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_change_position_animation_state_usecase/protocol_update_piece_to_change_position_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_fatal_attack_animation_state_usecase/impl_update_piece_to_making_fatal_attack_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_fatal_attack_animation_state_usecase/protocol_update_piece_to_making_fatal_attack_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_non_fatal_attack_animation_state_usecase/impl_update_piece_to_making_non_fatal_attack_animation_state_usecase.dart';
import 'package:micro_kharazan/battlemaker/domain/use_cases/piece_set_state_usecase/update_piece_to_making_non_fatal_attack_animation_state_usecase/protocol_update_piece_to_making_non_fatal_attack_animation_state_usecase.dart';
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
      piecesInTheBoard: mockEntities,
      fieldLimits: const ColiseumMap().stageLimits,
    );

    const usersInTheGame = [
      UserStateEntity(
        displayName: 'zNeutro',
        playerId: 'player1',
        currentMana: 50,
      ),
      UserStateEntity(
        displayName: 'The BOT',
        playerId: 'player2',
        currentMana: 50,
      ),
    ];

    const matchSource = ImplMatchSource(usersInTheGame: usersInTheGame);

    final ProtocolBoardRepository boardRepository =
        ImplBoardRepository(boardDataSource: boardSource);
    final ProtocolPieceRepository pieceRepository =
        ImplPieceRepository(boardDataSource: boardSource);
    const ProtocolMatchStateRepository matchRepo =
        ImplMatchRepository(matchSource: matchSource);

    final getValidMoves = ImplGetPieceValidMovimentationUsecase(
        boardRepository: boardRepository, pieceRepository: pieceRepository);
    final getValidAttacks = ImplGetPieceValidMovesAttackUsecase(
        boardRepository: boardRepository, pieceRepository: pieceRepository);

    final ProtocolGetMatchStatesUsecase getMatchStates =
        ImplGetMatchStatesUsecase(
      boardRepository: pieceRepository,
      matchRepository: matchRepo,
    );
    final ProtocolChangePiecePositionUsecase changePiecePositionUsecase =
        ImplChangePiecePositionUsecase(boardRepository: pieceRepository);
    final ProtocolDealDamageToPieceUsecase dealDamageToPiece =
        ImplDealDamageToPieceUsecase(boardRepository: pieceRepository);
    const ProtocolCanUserMakeMoveUsecase canUserMakeMove =
        ImplCanUserMakeMoveUsecase(matchStateRepository: matchRepo);
    final ProtocolGetPieceUsecase getPieceUsecase =
        ImplGetPieceUsecase(boardRepository: pieceRepository);
    final ProtocolRemovePieceInCoordenateUsecase
        removePieceInCoordenateUsecase =
        ImplRemovePieceInCoordenateUsecase(pieceRepository: pieceRepository);
    final ProtocolUpdatePieceToMakingFatalAttackAnimationStateUsecase
        updatePieceToMakingFatalAttackAnimationStateUsecase =
        ImplUpdatePieceToMakingFatalAttackAnimationStateUsecase(
            pieceRepository: pieceRepository);
    final ProtocolUpdatePieceToMakingNonFatalAttackAnimationStateUsecase
        updatePieceToMakingNonFatalAttackAnimationStateUsecase =
        ImplUpdatePieceToMakingNonFatalAttackAnimationStateUsecase(
            pieceRepository: pieceRepository);
    final ProtocolUpdatePieceToChangePositionAnimationStateUsecase
        updatePieceToChangePositionAnimationStateUsecase =
        ImplUpdatePieceToChangePositionAnimationStateUsecase(
            pieceRepository: pieceRepository);
    final ProtocolRemoveAllPieceAnimationsUsecase
        removeAllPieceAnimationsUsecase =
        ImplRemoveAllPieceAnimationsUsecase(pieceRepository: pieceRepository);

    final ProtocolDefineTypeOfMoveUsecase defineTypeOfMoveUsecase =
        ImplDefineTypeOfMoveUsecase();
    final ProtocolGetMoveEntitiesUsecase getMoveEntitiesUsecase =
        ImplGetMoveEntitiesUsecase(getPieceUsecase: getPieceUsecase);
    final ProtocolCanPieceMakeMoveUsecase canPieceMakeMoveUsecase =
        ImplCanPieceMakeMoveUsecase();

    final ProtocolExecuteTypedMoveUsecase executeTypedMoveUsecase =
        ImplExecuteTypedMoveUsecase(
      changePiecePositionUsecase: changePiecePositionUsecase,
      dealDamageToPieceUsecase: dealDamageToPiece,
      updatePieceToChangePositionAnimationStateUsecase:
          updatePieceToChangePositionAnimationStateUsecase,
      updatePieceToMakingNonFatalAttackAnimationStateUsecase:
          updatePieceToMakingNonFatalAttackAnimationStateUsecase,
      updatePieceToMakingFatalAttackAnimationStateUsecase:
          updatePieceToMakingFatalAttackAnimationStateUsecase,
      removePieceInCoordenateUsecase: removePieceInCoordenateUsecase,
      removeAllPieceAnimationsUsecase: removeAllPieceAnimationsUsecase,
    );

    final ProtocolMakeMoveUsecase makeMoveUsecase = ImplMakeMoveUsecase(
      defineTypeOfMoveUsecase: defineTypeOfMoveUsecase,
      getMatchStatesUsecase: getMatchStates,
      canUserMakeMoveUsecase: canUserMakeMove,
      getPieceUsecase: getMoveEntitiesUsecase,
      executeTypedMoveUsecase: executeTypedMoveUsecase,
      canPieceMakeMoveUsecase: canPieceMakeMoveUsecase,
    );

    final ProtocolGetMatchStatesUsecase getMatchStatesUsecase =
        ImplGetMatchStatesUsecase(
      boardRepository: pieceRepository,
      matchRepository: matchRepo,
    );

    final controller = BattleMakerController.createMatch(
      firstUserToMoveId: 'player1',
      makeMoveUsecase: makeMoveUsecase,
      protocolGetMatchStatesUsecase: getMatchStatesUsecase,
      getPieceValidAttacks: getValidAttacks,
      getPieceValidMovimentation: getValidMoves,
    );

    return BlocProvider(
      create: (_) => BattlefieldBloc(
        usersInTheGame: usersInTheGame,
        battleController: controller,
        entities: mockEntities,
      ),
      child: const DisposeWidget(),
    );
  }
}

class DisposeWidget extends StatefulWidget {
  const DisposeWidget({super.key});

  @override
  State<DisposeWidget> createState() => _DisposeWidgetState();
}

class _DisposeWidgetState extends State<DisposeWidget> {
  @override
  void initState() {
    super.initState();
    final bloc = context.read<BattlefieldBloc>();
    bloc.events.listen((event) {
      event.when(
        surrender: (String userThatSurrenderID) {
          bloc.add(BattlefieldEvent.surrender(userThatSurrenderID));
        },
        passTurnOtherToUser: (String idOfTurnUser) {
          bloc.add(BattlefieldEvent.surrender(idOfTurnUser));
        },
        errorOccoured: (MatchFailure failure) {
          bloc.add(BattlefieldEvent.notificateFailure(failure));
        },
        moveMaked: (CoordenatesInMove coordenatesInMove,
            String playerUserTurnId,
            List<BoardFieldEntity> boardState,
            List<UserStateEntity> usersInTheMatchState,
            List<MoveAnimationEntity> animationsInMove) {
          bloc.add(BattlefieldEvent.updateBoardStateAfterMove(
            coordenatesInMove: coordenatesInMove,
            playerUserTurnId: playerUserTurnId,
            boardState: boardState,
            usersInTheMatchState: usersInTheMatchState,
            animationsInMove: animationsInMove,
          ));
        },
      );
    });
  }

  @override
  void dispose() {
    // TODO: DISPOSE THE BATTLEFIELD
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BattlefieldBloc, BattlefieldState>(
      listenWhen: (previous, current) =>
          current.maybeMap<bool>(withError: (_) => true, orElse: () => false),
      listener: (context, state) {
        state.whenOrNull(
          withError: (users, currentUserId, failure, pieces) {
            log(failure.toString()); // TODO: IMPLEMENT DIALOG / ERROR MANEJMENT
          },
        );
      },
      child: const ResponsiveDeviceSplitter(
        mobile: MobileBattlefieldView(),
        tablet: TabletBattlefieldView(),
        desktop: DesktopBattlefieldView(),
      ),
    );
  }
}
