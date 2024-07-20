import 'package:auto_route/auto_route.dart';
import 'package:dewsclim/features/onboarding/presentation/ui/screens/onboarding.dart';
import 'package:dewsclim/features/splash/presentation/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';


part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        //RedirectRoute(path: '', redirectTo: '/'),
        //AutoRoute(page: Login.page,initial:true),
        AutoRoute(path: '/', page: Splash.page, initial: true),
        AutoRoute( page: Onboarding.page,),


      ];

  Route<T> modalSheetBuilder<T>(
      BuildContext context, Widget child, AutoRoutePage<T> page,) {
    return ModalBottomSheetRoute(
        builder: (context) => child, isScrollControlled: false,);
  }
}
