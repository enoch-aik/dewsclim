import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/animations/animations.dart';
import 'package:dewsclim/src/widgets/loading_dialog.dart';
import 'package:lottie/lottie.dart';

class Loader {
  static void show(BuildContext context) => showLoadingDialog(context);

  static void hide(BuildContext context) =>
      Navigator.of(context, rootNavigator: true).pop();

  static Widget get progressIndicator => Lottie.asset(
        loadingAnimation,
        height: 160,
        frameRate: FrameRate.max,
        repeat: true,
        errorBuilder: (context, e, _) => const CircularProgressIndicator(),
      );
}
