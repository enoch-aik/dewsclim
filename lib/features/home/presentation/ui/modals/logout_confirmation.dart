import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/router/router.dart';
import 'package:dewsclim/src/widgets/margin.dart';

class LogoutConfirmation extends StatelessWidget {
  const LogoutConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SvgPicture.asset(authSuccessSvg),
          const ColSpacing(20),
          Text(
            'Logout',
            textAlign: TextAlign.center,
            style: AppStyles.titleTextStyle.copyWith(
                fontSize: 24,
                color: AppColors.neutral900,
                fontWeight: FontWeight.w500),
          ),
          const ColSpacing(6),
          Text(
            'You will be logged out and will\nbe required to login next time.',
            textAlign: TextAlign.center,
            style: AppStyles.bodyTextStyle.copyWith(
                fontSize: 14,
                color: AppColors.neutral400,
                fontWeight: FontWeight.w500),
          ),
          const ColSpacing(60),
          FilledButton(
            onPressed: () {
              context.router.replaceAll([const Onboarding()]);
            },
            style: FilledButton.styleFrom(backgroundColor: AppColors.error),
            child: const Text('Continue'),
          ),
          const ColSpacing(10),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.neutral600,
                side: const BorderSide(color: AppColors.neutral600, width: 1)),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Back'),
          )
        ],
      ),
    );
  }

  static void displayModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      isDismissible: true,
      constraints: const BoxConstraints.tightFor(height: 360),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      builder: (context) => const LogoutConfirmation(),
    );
  }
}
