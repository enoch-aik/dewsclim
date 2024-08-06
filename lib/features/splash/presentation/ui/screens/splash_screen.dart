import 'dart:async';
import 'dart:math';

import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/images/images.dart';
import 'package:dewsclim/src/res/assets/svg/svg.dart';
import 'package:dewsclim/src/router/router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage(name: 'splash')
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  bool showSplitLogos = false;

  @override
  void initState() {
    super.initState();
    //redirect();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheOnboardingImages();
  }

  precacheOnboardingImages() {
    precacheImage(AssetImage(onboarding1), context);
    precacheImage(AssetImage(onboarding2), context);
    precacheImage(AssetImage(onboarding3), context);
  }

  //redirect user to onboarding screen if user is not logged in
  redirect() {
    Future.delayed(const Duration(milliseconds: 200), () {
      AppNavigator.of(context).replace(const Onboarding());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SvgPicture.asset(
              namedLogoSvg,
              width: 200,
              height: 200,
            ).animate(
              onComplete: (_) {
                redirect();
              },
              onPlay: (controller) {
                controller.addListener(() {
                  if (controller.value >= 0.35) {
                    setState(() {
                      showSplitLogos = true;
                    });
                  }
                  /*if(controller.value>=0.85){
                    redirect();
                  }*/
                });
              },
            ).scale(
              duration: const Duration(milliseconds: 1200),
              delay: const Duration(milliseconds: 100),
              curve: const SpringCurve(),
              begin: const Offset(1, 1),
              end: const Offset(0.45, 0.45),
            ),
          ),
          Positioned(
            top: 64,
            child: AnimatedOpacity(
                opacity: showSplitLogos ? 1 : 0,
                curve: const SpringCurve(),
                duration: const Duration(milliseconds: 1200),
                child: SvgPicture.asset(rightSplitLogoSvg)),
          ),
          Positioned(
            bottom: 8,
            right: 0,
            child: AnimatedOpacity(
              opacity: showSplitLogos ? 1 : 0,
              curve: const SpringCurve(),
              duration: const Duration(milliseconds: 1500),
              child: SvgPicture.asset(
                leftSplitLogoSvg,
                height: 320,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class SpringCurve extends Curve {
  const SpringCurve({
    this.a = 0.15,
    this.w = 19.4,
  });

  final double a;
  final double w;

  @override
  double transformInternal(double t) {
    return -(pow(e, -t / a) * cos(t * w)) + 1;
  }
}
