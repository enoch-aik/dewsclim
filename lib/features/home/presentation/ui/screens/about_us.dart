import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/images/images.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/margin.dart';

@RoutePage(name: 'aboutUs')
class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: InkWell(
            splashFactory: NoSplash.splashFactory,
            highlightColor: Colors.transparent,
            onTap: () {
              AppNavigator.of(context).pop();
            },
            borderRadius: BorderRadius.circular(40),
            child: const Icon(
              Icons.arrow_back_ios,
              weight: .5,
              color: AppColors.neutral500,
            ),
          ),
        ),
        centerTitle: false,
        title: Text('Back',
            style: AppStyles.bodyTextStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.neutral500)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const ColSpacing(24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('About us',
                  style: AppStyles.bodyTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral900)),
            ),
            const ColSpacing(16),
            Image.asset(
                width: double.maxFinite, fit: BoxFit.fitWidth, aboutUsImg),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'DEWSClim ',
                  style: AppStyles.bodyTextStyle.copyWith(
                      fontSize: 16,
                      color: AppColors.neutral900,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Text(
              'Dewsclim is a weather forecasting app that provides accurate weather information to farmers to help them make informed decisions about their crops.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus.\n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus.',
              textAlign: TextAlign.justify,
              style: AppStyles.bodyTextStyle.copyWith(
                  fontSize: 14,
                  color: AppColors.neutral900,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
