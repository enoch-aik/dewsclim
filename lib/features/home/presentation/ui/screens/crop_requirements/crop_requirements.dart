import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/images/images.dart';
import 'package:dewsclim/src/res/assets/svg/svg.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/router/router.dart';
import 'package:dewsclim/src/widgets/margin.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage(name: 'cropRequirement')
class CropRequirementScreen extends StatelessWidget {
  const CropRequirementScreen({super.key});

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
              'Crop Requirements',
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
              'Maize is an annual crop with a diverse range of cultivars '
              'adapted to different climates, including temperate, '
              'subtropical, and tropical lowland varieties with growth'
              ' cycles lasting from 90 to 180 days, and tropical '
              'highland types requiring 120 up to 300 days to mature.'
              ' It falls under the category of crops utilizing the '
              'C4 photosynthesis pathway (C4 II).',
              textAlign: TextAlign.justify,
              style: AppStyles.bodyTextStyle.copyWith(
                fontSize: 14,
                color: AppColors.neutral900,
                fontWeight: FontWeight.w400,
              ),
            ),
            const ColSpacing(40),
            ListTile(
              onTap: () {
                AppNavigator.of(context).push(const TemperatureRequirements());
              },
              tileColor: AppColors.warning,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              leading: SvgPicture.asset(
                temperatureOutlinedSvg,
                width: 28,
              ),
              title: Text(
                'Temperature requirements',
                style: AppStyles.bodyTextStyle.copyWith(fontSize: 14),
              ),
              trailing: const Icon(
                Icons.keyboard_arrow_right_outlined,
                color: AppColors.neutral900,
              ),
            ),
            const ColSpacing(10),
            ListTile(
              onTap: () {
                AppNavigator.of(context).push(const RainfallRequirements());
              },
              tileColor: AppColors.secondary100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              leading: SvgPicture.asset(
                rainfallPatternOutlinedSvg,
                width: 28,
              ),
              title: Text(
                'Rainfall requirements',
                style: AppStyles.bodyTextStyle.copyWith(fontSize: 14),
              ),
              trailing: const Icon(
                Icons.keyboard_arrow_right_outlined,
                color: AppColors.neutral900,
              ),
            ),
            const ColSpacing(10),
            ListTile(
              onTap: (){
                AppNavigator.of(context).push(const PrevalentPests());
              },
              tileColor: AppColors.success100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              leading: SvgPicture.asset(
                bugSvg,
                width: 28,
              ),
              title: Text(
                'Prevailing pests and diseases',
                style: AppStyles.bodyTextStyle.copyWith(fontSize: 14),
              ),
              trailing: const Icon(
                Icons.keyboard_arrow_right_outlined,
                color: AppColors.neutral900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
