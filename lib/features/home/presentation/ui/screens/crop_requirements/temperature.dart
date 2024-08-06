import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/images/images.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/widgets.dart';

@RoutePage(name: 'temperatureRequirements')
class TemperatureRequirementsScreen extends StatelessWidget {
  const TemperatureRequirementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Transform.translate(
          offset: const Offset(-10, 0),
          child: Text(
            'Back',
            style: AppStyles.bodyTextStyle.copyWith(
                color: AppColors.baseBlack,
                fontSize: 14.5,
                fontWeight: FontWeight.w400),
          ),
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
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ColSpacing(24),
            Text(
              'Temperature requirements',
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
              'Optimal temperature range for highest production potential: '
              '21°C to 27°C.\n\nMinimum growing season temperature for maize:'
              ' 19°C.\n\nMinimum average night temperature for maize growth:'
              ' 14°C.\n\nMaximum temperature tolerance: 35°C.\n\nOptimal'
              ' germination temperature: 18°C.\n\nGermination affected at'
              ' temperatures below: 14°C.',
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
