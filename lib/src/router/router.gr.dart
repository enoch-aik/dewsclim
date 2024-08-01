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
    AboutUs.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AboutUsScreen(),
      );
    },
    AgeReg.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AgeRegScreen(),
      );
    },
    AppShell.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AppShellScreen(),
      );
    },
    ChoosePreferredLanguage.name: (routeData) {
      final args = routeData.argsAs<ChoosePreferredLanguageArgs>(
          orElse: () => const ChoosePreferredLanguageArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChoosePreferredLanguageScreen(
          key: args.key,
          fromOnboarding: args.fromOnboarding,
        ),
      );
    },
    ContactUs.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactUsScreen(),
      );
    },
    FullNameReg.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FullNameRegScreen(),
      );
    },
    Gemini.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GeminiScreen(),
      );
    },
    GenderReg.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GenderRegScreen(),
      );
    },
    Home.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LoginOtp.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginOtpScreen(),
      );
    },
    Login.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    Onboarding.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    OtpReg.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OtpRegScreen(),
      );
    },
    PhoneNumberReg.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PhoneNumberRegScreen(),
      );
    },
    Profile.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    Search.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchScreen(),
      );
    },
    SelectLocation.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SelectLocationScreen(),
      );
    },
    Splash.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    UserFeedback.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserFeedbackScreen(),
      );
    },
    Yield.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const YieldScreen(),
      );
    },
  };
}

/// generated route for
/// [AboutUsScreen]
class AboutUs extends PageRouteInfo<void> {
  const AboutUs({List<PageRouteInfo>? children})
      : super(
          AboutUs.name,
          initialChildren: children,
        );

  static const String name = 'AboutUs';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [AppShellScreen]
class AppShell extends PageRouteInfo<void> {
  const AppShell({List<PageRouteInfo>? children})
      : super(
          AppShell.name,
          initialChildren: children,
        );

  static const String name = 'AppShell';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChoosePreferredLanguageScreen]
class ChoosePreferredLanguage
    extends PageRouteInfo<ChoosePreferredLanguageArgs> {
  ChoosePreferredLanguage({
    Key? key,
    bool fromOnboarding = false,
    List<PageRouteInfo>? children,
  }) : super(
          ChoosePreferredLanguage.name,
          args: ChoosePreferredLanguageArgs(
            key: key,
            fromOnboarding: fromOnboarding,
          ),
          initialChildren: children,
        );

  static const String name = 'ChoosePreferredLanguage';

  static const PageInfo<ChoosePreferredLanguageArgs> page =
      PageInfo<ChoosePreferredLanguageArgs>(name);
}

class ChoosePreferredLanguageArgs {
  const ChoosePreferredLanguageArgs({
    this.key,
    this.fromOnboarding = false,
  });

  final Key? key;

  final bool fromOnboarding;

  @override
  String toString() {
    return 'ChoosePreferredLanguageArgs{key: $key, fromOnboarding: $fromOnboarding}';
  }
}

/// generated route for
/// [ContactUsScreen]
class ContactUs extends PageRouteInfo<void> {
  const ContactUs({List<PageRouteInfo>? children})
      : super(
          ContactUs.name,
          initialChildren: children,
        );

  static const String name = 'ContactUs';

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
/// [GeminiScreen]
class Gemini extends PageRouteInfo<void> {
  const Gemini({List<PageRouteInfo>? children})
      : super(
          Gemini.name,
          initialChildren: children,
        );

  static const String name = 'Gemini';

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
/// [HomeScreen]
class Home extends PageRouteInfo<void> {
  const Home({List<PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginOtpScreen]
class LoginOtp extends PageRouteInfo<void> {
  const LoginOtp({List<PageRouteInfo>? children})
      : super(
          LoginOtp.name,
          initialChildren: children,
        );

  static const String name = 'LoginOtp';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class Login extends PageRouteInfo<void> {
  const Login({List<PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

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
/// [OtpRegScreen]
class OtpReg extends PageRouteInfo<void> {
  const OtpReg({List<PageRouteInfo>? children})
      : super(
          OtpReg.name,
          initialChildren: children,
        );

  static const String name = 'OtpReg';

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
/// [ProfileScreen]
class Profile extends PageRouteInfo<void> {
  const Profile({List<PageRouteInfo>? children})
      : super(
          Profile.name,
          initialChildren: children,
        );

  static const String name = 'Profile';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchScreen]
class Search extends PageRouteInfo<void> {
  const Search({List<PageRouteInfo>? children})
      : super(
          Search.name,
          initialChildren: children,
        );

  static const String name = 'Search';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SelectLocationScreen]
class SelectLocation extends PageRouteInfo<void> {
  const SelectLocation({List<PageRouteInfo>? children})
      : super(
          SelectLocation.name,
          initialChildren: children,
        );

  static const String name = 'SelectLocation';

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

/// generated route for
/// [UserFeedbackScreen]
class UserFeedback extends PageRouteInfo<void> {
  const UserFeedback({List<PageRouteInfo>? children})
      : super(
          UserFeedback.name,
          initialChildren: children,
        );

  static const String name = 'UserFeedback';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [YieldScreen]
class Yield extends PageRouteInfo<void> {
  const Yield({List<PageRouteInfo>? children})
      : super(
          Yield.name,
          initialChildren: children,
        );

  static const String name = 'Yield';

  static const PageInfo<void> page = PageInfo<void>(name);
}
