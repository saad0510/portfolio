import 'package:responsive_framework/responsive_framework.dart';

extension ResponsiveBreakpointsExt on ResponsiveBreakpointsData {
  T map<T>({
    required T mobile,
    required T tablet,
    required T desktop,
    required T wideScreen,
  }) {
    if (isMobile) return mobile;
    if (isTablet) return tablet;
    if (isDesktop) return desktop;
    return wideScreen;
  }

  bool get withinTablet {
    return smallerOrEqualTo(TABLET);
  }

  bool get withinSemiDesktop {
    return smallerOrEqualTo('SEMI_DESKTOP');
  }
}
