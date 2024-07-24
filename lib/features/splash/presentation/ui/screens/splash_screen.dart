import 'dart:async';

import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/router/navigator.dart';
import 'package:dewsclim/src/router/router.dart';

@RoutePage(name: 'splash')
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirect();
  }


  //redirect user to onboarding screen if user is not logged in
  redirect() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      AppNavigator.of(context).replace(const Onboarding());
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
