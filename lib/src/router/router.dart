import 'package:auto_route/auto_route.dart';
import 'package:dewsclim/features/auth/presentation/ui/screens/login/login.dart';
import 'package:dewsclim/features/auth/presentation/ui/screens/register/register.dart';
import 'package:dewsclim/features/home/presentation/ui/screens/home.dart';
import 'package:dewsclim/features/home/presentation/ui/screens/select_location.dart';
import 'package:dewsclim/features/onboarding/presentation/ui/screens/onboarding.dart';
import 'package:dewsclim/features/splash/presentation/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        ///SPLASH
        AutoRoute(page: Splash.page, initial: true),

        ///ONBOARDING
        AutoRoute(page: Onboarding.page),

        ///AUTH
        AutoRoute(page: ChoosePreferredLanguage.page),
        AutoRoute(page: AgeReg.page),
        AutoRoute(page: FullNameReg.page),
        AutoRoute(page: GenderReg.page),
        AutoRoute(page: PhoneNumberReg.page),
        AutoRoute(page: OtpReg.page),
        AutoRoute(page: Login.page),
        AutoRoute(page: LoginOtp.page),

        ///HOME
        AutoRoute(page: Home.page),
        AutoRoute(page: SelectLocation.page),
      ];

  Route<T> modalSheetBuilder<T>(
    BuildContext context,
    Widget child,
    AutoRoutePage<T> page,
  ) {
    return ModalBottomSheetRoute(
      builder: (context) => child,
      isScrollControlled: false,
    );
  }
}
