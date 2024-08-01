import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/animations/animations.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:lottie/lottie.dart';

Future showLoadingDialog(context) {
  return showDialog(
    barrierColor: AppColors.baseWhite.withOpacity(0.5),
    barrierDismissible: false,
    context: context,
    builder: (context) => WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Center(
        child: Lottie.asset(
          loadingAnimation,
          height: 160,
          frameRate: FrameRate.max,
          repeat: true,
          errorBuilder: (context, e, _) => const CircularProgressIndicator(),
        ),
      ),
    ),
  );
}

/*Future showLoadingDialog(context) {
  return showDialog(
    barrierDismissible: false,
    barrierColor: CustomColors.textColorLight2.withOpacity(0.2),
    context: context,
    builder: (context) => WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Center(
        child: Lottie.asset(
          'assets/gif/loading2.json',
          height: 140.h,
          frameRate: FrameRate.max,
          repeat: true,
          errorBuilder: (context, e, _) => const CircularProgressIndicator(),
        ),
      ),
    ),
  );
}
*/
