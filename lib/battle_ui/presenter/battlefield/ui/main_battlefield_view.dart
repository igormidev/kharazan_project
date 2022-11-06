import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_kharazan/battle_ui/presenter/battlefield/bloc/battlefield_bloc.dart';
import 'package:micro_kharazan/sandbox_responsive_framework/sandbox_responsive_framework.dart';

import 'tablet_battlefield_view.dart';
import 'desktop_battlefield_view.dart';
import 'mobile_battlefield_view.dart';

class MainBattlefieldView extends StatelessWidget {
  const MainBattlefieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BattlefieldBloc, BattlefieldState>(
      builder: (context, state) => const ResponsiveDeviceSplitter(
        mobile: MobileBattlefieldView(),
        tablet: TabletBattlefieldView(),
        desktop: DesktopBattlefieldView(),
      ),
    );
  }
}
