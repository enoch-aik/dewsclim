// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AgeReg.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AgeRegScreen(),
      );
    },
    ChoosePreferredLanguage.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChoosePreferredLanguageScreen(),
      );
    },
    FullNameReg.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FullNameRegScreen(),
      );
    },
    GenderReg.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GenderRegScreen(),
      );
    },
    Onboarding.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    PhoneNumberReg.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PhoneNumberRegScreen(),
      );
    },
    Splash.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [AgeRegScreen]
class AgeReg extends PageRouteInfo<void> {
  const AgeReg({List<PageRouteInfo>? children})
      : super(
          AgeReg.name,
          initialChildren: children,
        );

  static const String name = 'AgeReg';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChoosePreferredLanguageScreen]
class ChoosePreferredLanguage extends PageRouteInfo<void> {
  const ChoosePreferredLanguage({List<PageRouteInfo>? children})
      : super(
          ChoosePreferredLanguage.name,
          initialChildren: children,
        );

  static const String name = 'ChoosePreferredLanguage';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FullNameRegScreen]
class FullNameReg extends PageRouteInfo<void> {
  const FullNameReg({List<PageRouteInfo>? children})
      : super(
          FullNameReg.name,
          initialChildren: children,
        );

  static const String name = 'FullNameReg';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GenderRegScreen]
class GenderReg extends PageRouteInfo<void> {
  const GenderReg({List<PageRouteInfo>? children})
      : super(
          GenderReg.name,
          initialChildren: children,
        );

  static const String name = 'GenderReg';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingScreen]
class Onboarding extends PageRouteInfo<void> {
  const Onboarding({List<PageRouteInfo>? children})
      : super(
          Onboarding.name,
          initialChildren: children,
        );

  static const String name = 'Onboarding';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PhoneNumberRegScreen]
class PhoneNumberReg extends PageRouteInfo<void> {
  const PhoneNumberReg({List<PageRouteInfo>? children})
      : super(
          PhoneNumberReg.name,
          initialChildren: children,
        );

  static const String name = 'PhoneNumberReg';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class Splash extends PageRouteInfo<void> {
  const Splash({List<PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const PageInfo<void> page = PageInfo<void>(name);
}
