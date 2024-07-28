import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/svg/svg.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/margin.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationAddedModal extends StatelessWidget {
  final String location;

  const LocationAddedModal({super.key, required this.location});

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
            'Location Added!',
            textAlign: TextAlign.center,
            style: AppStyles.titleTextStyle.copyWith(
                fontSize: 24,
                color: AppColors.neutral900,
                fontWeight: FontWeight.w500),
          ),
          const ColSpacing(6),
          Text(
            'Your primary location has\nbeen set as $location state',
            textAlign: TextAlign.center,
            style: AppStyles.bodyTextStyle.copyWith(
                fontSize: 14,
                color: AppColors.neutral400,
                fontWeight: FontWeight.w500),
          ),
          const ColSpacing(40),
          FilledButton(
              onPressed: () {
                AppNavigator.of(context).pop();
              },
              child: const Text('Continue'))
        ],
      ),
    );
  }

  static void displayModal(BuildContext context, {required String location}) {
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
      builder: (context) => LocationAddedModal(
        location: location,
      ),
    );
  }
}
