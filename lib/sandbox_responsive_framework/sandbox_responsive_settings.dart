class SandboxResponsiveSettings {
  /// Singleton pattern, always the same instante of [SandboxResponsiveSettings]
  static SandboxResponsiveSettings get instance => _instance;
  SandboxResponsiveSettings._();
  static final SandboxResponsiveSettings _instance =
      SandboxResponsiveSettings._();

  // ==> Variables
  double _mobileBreakpoint = 500.0;
  double _tabletBreakpoint = 1100.0;
  double _desktopBreakpoint = 3840.0;

  // ==> Setters
  set setMobileBreakpoint(double newValue) => _mobileBreakpoint = newValue;
  set setTabletBreakpoint(double newValue) => _tabletBreakpoint = newValue;
  set setDesktopBreakpoint(double newValue) => _desktopBreakpoint = newValue;

  // ==> Getters
  double get mobileBreakpoint => _mobileBreakpoint;
  double get tabletBreakpoint => _tabletBreakpoint;
  double get desktopBreakpoint => _desktopBreakpoint;
}
