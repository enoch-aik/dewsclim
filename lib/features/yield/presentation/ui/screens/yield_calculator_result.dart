import 'package:dewsclim/features/yield/data/models/yield_res_model.dart';
import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/svg/svg.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/margin.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage(name: 'yieldCalculatorResult')
class YieldCalculatorResultScreen extends StatelessWidget {
  final YieldResModel calculatedYield;

  const YieldCalculatorResultScreen({super.key, required this.calculatedYield});

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
            if (calculatedYield.yieldEstimate != null)
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: 'Yield Estimate: ',
                    style: AppStyles.bodyTextStyle
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                      text: calculatedYield.yieldEstimate.toString(),
                      style: AppStyles.bodyTextStyle),
                ]),
                style: AppStyles.bodyTextStyle.copyWith(
                  fontSize: 16,
                  color: AppColors.baseBlack,
                  fontWeight: FontWeight.w400,
                ),
              ),
            const ColSpacing(8),
            if (calculatedYield.explanation != null &&
                !calculatedYield.explanation!.contains('Unfortunately'))
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: 'Explanation: ',
                    style: AppStyles.bodyTextStyle
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                      text: calculatedYield.explanation,
                      style: AppStyles.bodyTextStyle.copyWith(fontSize: 14)),
                ]),
                style: AppStyles.bodyTextStyle.copyWith(
                  fontSize: 16,
                  color: AppColors.baseBlack,
                  fontWeight: FontWeight.w400,
                ),
              ),
            const ColSpacing(16),
            if (calculatedYield.recommendations != null &&
                calculatedYield.recommendations!.isNotEmpty)
              Text(
                'Recommendations',
                style: AppStyles.bodyTextStyle.copyWith(
                  fontSize: 16,
                  color: AppColors.baseBlack,
                  fontWeight: FontWeight.w600,
                ),
              ),
            if (calculatedYield.recommendations != null)
              ...List.generate(
                calculatedYield.recommendations!.length,
                (index) => Text(
                  '${calculatedYield.recommendations![index]}\n',
                  style: AppStyles.bodyTextStyle.copyWith(
                    fontSize: 14,
                    color: AppColors.baseBlack,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
