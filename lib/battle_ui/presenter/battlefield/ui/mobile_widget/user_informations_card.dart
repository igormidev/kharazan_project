import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/bloc/battlefield_bloc.dart';
import 'package:micro_kharazan/battlemaker/domain/entities/user_state_entity.dart';
import 'package:micro_kharazan/design_system/custom_contrained_box.dart';

class CardUsersInfoDisplayer extends StatelessWidget {
  const CardUsersInfoDisplayer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BattlefieldBloc, BattlefieldState>(
      buildWhen: (previous, current) =>
          listEquals(previous.users, current.users) == false,
      builder: (context, state) {
        final users = state.users;
        return SafeArea(
          child: Align(
            alignment: Alignment.topCenter,
            child: CustomContrainedBox(
              maxHeight: (_) => 85,
              maxWidth: (constraints) => constraints.maxWidth * 0.95,
              margin: const EdgeInsets.only(top: 12),
              builder: (constraints) {
                return Card(
                  child: Row(
                    children: [
                      UserInformations.rightToLeft(user: users[0]),
                      const VerticalDivider(),
                      UserInformations.leftToRight(user: users[1]),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class UserInformations extends StatelessWidget {
  final UserStateEntity user;

  final bool isLeftToRight;

  const UserInformations.leftToRight({required this.user, super.key})
      : isLeftToRight = true;
  const UserInformations.rightToLeft({required this.user, super.key})
      : isLeftToRight = false;

  @override
  Widget build(BuildContext context) {
    final children = [
      const SizedBox(width: 16),
      Text(
        user.currentMana.toString(),
        style: Theme.of(context).textTheme.displayMedium,
      ),
      Expanded(
        child: SizedBox(
          width: double.maxFinite,
          child: Card(
            color: Colors.grey[300],
            child: Center(
              child: Text(
                '12:47',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ),
        ),
      )
    ];

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            isLeftToRight ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: isLeftToRight ? 0.0 : 12.0,
              right: isLeftToRight ? 12.0 : 0.0,
            ),
            child: Text(
              user.displayName,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: isLeftToRight ? children.reversed.toList() : children,
          ),
        ],
      ),
    );
  }
}
