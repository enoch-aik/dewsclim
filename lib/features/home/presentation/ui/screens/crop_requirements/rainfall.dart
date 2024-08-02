import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/images/images.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/widgets.dart';

@RoutePage(name: 'rainfallRequirements')

class RainfallRequirementsScreen extends StatelessWidget {
  const RainfallRequirementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Back',
          style: AppStyles.bodyTextStyle.copyWith(
              color: AppColors.baseBlack,
              fontSize: 14.5,
              fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            weight: 0.5,
            size: 18,
          ),
          color: AppColors.baseBlack,
          highlightColor: Colors.transparent,
          onPressed: () {
            AppNavigator.of(context).pop();
          },
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ColSpacing(24),
            Text(
              'Rainfall Requirements',
              style: AppStyles.bodyTextStyle.copyWith(
                fontSize: 18,
                color: AppColors.baseBlack,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 20),
              child: Image.asset(
                maizeImg,
                width: double.maxFinite,
                fit: BoxFit.fitWidth,
              ),
            ),
            Text(
              'Maize',
              style: AppStyles.bodyTextStyle.copyWith(
                fontSize: 16,
                color: AppColors.neutral900,
                fontWeight: FontWeight.w500,
              ),
            ),
            const ColSpacing(16),
            Text(
              'Rainfall needs for maize vary widely, ranging from 480 mm to '
                  '2,000 mm, depending on the cultivar and local conditions. '
                  'A minimal range of 480–880 mm of well distributed rainfall'
                  ' is adequate for maize, depending on the variety. The '
                  'moisture requirements are small during the early stages '
                  'of development but increase rapidly up to the flowering '
                  'stage, before decreasing again as the crop matures.\n\n'
                  'Maize is especially sensitive to moisture stress during '
                  'flowering when a short spell of stress can reduce the '
                  'crop yield by up to 30–35%. Depending on the variety, '
                  'maize requires between 480 and 880 mm of evenly spread '
                  'rainfall for optimal growth.',
              textAlign: TextAlign.justify,
              style: AppStyles.bodyTextStyle.copyWith(
                fontSize: 14,
                color: AppColors.neutral900,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
