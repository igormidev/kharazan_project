import 'package:flutter/material.dart';
import 'package:micro_kharazan/sandbox_responsive_framework/sandbox_responsive_framework.dart';

class ResponsiveDeviceSplitter extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  /// Widgets interval:
  ///
  /// - [mobile] < mobileBreakpoint
  /// - mobileBreakpoint < [tablet] <  tabletBreakpoint
  /// - tabletBreakpoint < [desktop]
  ///
  /// To widget will aprear if it is in the interval
  /// **and** is not null.
  const ResponsiveDeviceSplitter({
    required this.mobile,
    required this.tablet,
    required this.desktop,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final settings = SandboxResponsiveSettings.instance;
    return LayoutBuilder(
      builder: (context, constraints) {
        // MOBILE < mobileBreakpoint
        if (constraints.maxWidth < settings.mobileBreakpoint) {
          return Visibility(visible: mobile != null, child: mobile!);
        }

        // mobileBreakpoint < TABLET <  tabletBreakpoint
        if (constraints.maxWidth < settings.tabletBreakpoint) {
          return Visibility(visible: tablet != null, child: tablet!);
        }

        // tabletBreakpoint < DESKTOP
        return Visibility(visible: desktop != null, child: desktop!);
      },
    );
  }
}
