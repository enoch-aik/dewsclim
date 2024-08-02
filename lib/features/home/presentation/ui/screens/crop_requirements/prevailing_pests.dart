import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/images/images.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/widgets.dart';

@RoutePage(name: 'prevalentPests')
class PrevalentPestsScreen extends StatelessWidget {
  const PrevalentPestsScreen({super.key});

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
              'Prevalent Pest and diseases',
              style: AppStyles.bodyTextStyle.copyWith(
                fontSize: 18,
                color: AppColors.baseBlack,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 20),
              child: Image.asset(
                bugImg,
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
              'Fall Armyworm (FAW) The most important pest of maize is the '
                  'Fall Armyworm (FAW), Spodoptera frugiperda (Lepidoptera:'
                  ' Noctuidae). In Nigeria, FAW is among the most destructive'
                  ' invasive pests. The larvae, which are light green to dark'
                  ' brown with longitudinal stripes feed in large numbers on '
                  'the leaves, stems, and reproductive parts of plants. The'
                  ' pest affects more than 350 plant species causing severe '
                  'damage to cultivated crops, such as maize, rice, sorghum,'
                  ' sugarcane, etc. The host crop most susceptible to FAW is'
                  ' maize, a high-priority food crop across states in Nigeria.'
                  '\n\nThe pest is very difficult to control, and management '
                  'in maize fields necessitates the frequent application of '
                  'insecticides and sometimes the use of multiple types and '
                  'formulations of chemicals. The eggs are 0.4 mm in diameter'
                  ' and 0.3 mm in height; they are pale yellow or creamy at '
                  'the time of oviposition and becomes light brown prior to '
                  'eclosion. Egg maturity takes 2–3 days when the temperature'
                  ' is between 20 and 30oC. Eggs are usually laid in masses '
                  'of approximately 150–200 eggs, which are laid 2–4 layers'
                  ' deep on the surface of the leaf. Egg masses may be laid '
                  'on the undersides too, or on top of the leaves.',
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
