import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/svg/svg.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/margin.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage(name: 'yieldCalculatorResult')
class YieldCalculatorResultScreen extends StatelessWidget {
  const YieldCalculatorResultScreen({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ColSpacing(16),
            Text(
              'Yield Projection',
              style: AppStyles.bodyTextStyle.copyWith(
                fontSize: 18,
                color: AppColors.baseBlack,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: SvgPicture.asset(
                geminiLogoSvg,
                width: 32,
              )
                  .animate(
                      onPlay: (controller) => controller.repeat(reverse: true))
                  .shimmer(duration: const Duration(seconds: 2)),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Etiam eu turpis molestie, dictum est a, mattis tellus. '
              'Sed dignissim, metus nec fringilla accumsan, risus sem '
              'sollicitudin lacus, ut interdum tellus elit sed risus.'
              '\n\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Etiam eu turpis molestie, dictum est a, mattis tellus. '
              'Sed dignissim, metus nec fringilla accumsan, risus sem '
              'sollicitudin lacus, ut interdum tellus elit sed risus.',
              style: AppStyles.bodyTextStyle.copyWith(
                fontSize: 14,
                color: AppColors.baseBlack,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
