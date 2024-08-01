import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/svg/svg.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/router/router.dart';
import 'package:dewsclim/src/widgets/margin.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationCompleteModal extends StatelessWidget {
  final bool fromRegistration;

  const RegistrationCompleteModal({super.key, required this.fromRegistration});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(authSuccessSvg),
          const ColSpacing(20),
          Text(
            'Completed!',
            textAlign: TextAlign.center,
            style: AppStyles.titleTextStyle.copyWith(
                fontSize: 24,
                color: AppColors.neutral900,
                fontWeight: FontWeight.w500),
          ),
          const ColSpacing(6),
          Text(
            'You\'ve successfully\n${fromRegistration ? 'registered' : 'logged into'} your profile',
            textAlign: TextAlign.center,
            style: AppStyles.bodyTextStyle.copyWith(
                fontSize: 14,
                color: AppColors.neutral400,
                fontWeight: FontWeight.w500),
          ),
          const ColSpacing(40),
          FilledButton(
              onPressed: () {
                AppNavigator.of(context).replaceAll([const AppShell()]);
              },
              child: const Text('Go to Home'))
        ],
      ),
    );
  }

  static void displayModal(BuildContext context,
      {bool fromRegistration = false}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      isDismissible: false,
      constraints: const BoxConstraints.tightFor(height: 488),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      builder: (context) => RegistrationCompleteModal(
        fromRegistration: fromRegistration,
      ),
    );
  }
}
