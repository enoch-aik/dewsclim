import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/images/images.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/margin.dart';

@RoutePage(name: 'contactUs')
class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

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
                color: AppColors.neutral500,
                fontSize: 12.5,
                fontWeight: FontWeight.w400),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            weight: 0.5,
            size: 18,
          ),
          color: AppColors.neutral500,
          highlightColor: Colors.transparent,
          onPressed: () {
            AppNavigator.of(context).pop();
          },
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const ColSpacing(24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Contact us',
                  style: AppStyles.bodyTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral900)),
            ),
            const ColSpacing(16),
            Image.asset(
                width: double.maxFinite, fit: BoxFit.fitWidth, contactUsImg),
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
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus.',
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
