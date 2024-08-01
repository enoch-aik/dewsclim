import 'package:auto_route/auto_route.dart';
import 'package:dewsclim/features/app_shell/presentation/ui/screens/app_shell.dart';
import 'package:dewsclim/features/auth/presentation/ui/screens/login/login.dart';
import 'package:dewsclim/features/auth/presentation/ui/screens/register/register.dart';
import 'package:dewsclim/features/gemini/presentation/ui/screens/gemini.dart';
import 'package:dewsclim/features/home/presentation/ui/screens/about_us.dart';
import 'package:dewsclim/features/home/presentation/ui/screens/contact_us.dart';
import 'package:dewsclim/features/home/presentation/ui/screens/feedback.dart';
import 'package:dewsclim/features/home/presentation/ui/screens/home.dart';
import 'package:dewsclim/features/home/presentation/ui/screens/select_location.dart';
import 'package:dewsclim/features/onboarding/presentation/ui/screens/onboarding.dart';
import 'package:dewsclim/features/profile/presentation/ui/screens/profile.dart';
import 'package:dewsclim/features/search/presentation/ui/screens/search.dart';
import 'package:dewsclim/features/splash/presentation/ui/screens/splash_screen.dart';
import 'package:dewsclim/features/yield/presentation/ui/screens/yield.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        ///SPLASH
        AutoRoute(page: Splash.page, initial: true),
        //AutoRoute(page: Splash.page),

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

        ///APP SHELL
        AutoRoute(
          page: AppShell.page, /*initial: true*/
        ),

        ///HOME
        AutoRoute(
          page: Home.page, /*initial:  true*/
        ),
        AutoRoute(page: SelectLocation.page),
        AutoRoute(page: AboutUs.page),
        AutoRoute(page: ContactUs.page),
        AutoRoute(page: UserFeedback.page),

        ///SEARCH
        AutoRoute(page: Search.page),

        ///GEMINI
        AutoRoute(page: Gemini.page),

        ///YIELD

        AutoRoute(page: Yield.page),

        ///PROFILE
        AutoRoute(page: Profile.page)
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
