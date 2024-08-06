import 'package:dewsclim/features/gemini/presentation/ui/widgets/suggested_question.dart';
import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/svg/svg.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/margin.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage(name: 'gemini')
class GeminiScreen extends StatelessWidget {
  const GeminiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter a prompt here',
                    hintStyle: AppStyles.bodyTextStyle.copyWith(
                      fontSize: 12,
                      color: AppColors.neutral400,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                    suffixIcon: Transform.scale(
                      scale: 0.8,
                      child: SvgPicture.asset(
                        geminiSendFilledSvg,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'Ask Gemini AI',
            style: AppStyles.bodyTextStyle.copyWith(
              fontSize: 18,
              color: AppColors.baseBlack,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Ask Gemini AI questions for future prediction and adaptive techniques',
                  style: AppStyles.bodyTextStyle.copyWith(
                    fontSize: 14,
                    color: AppColors.neutral500,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            //SUGGESTED QUESTIONS
            SuggestedQuestion(onTap: () {}, title: 'Suggested Question....'),
            const ColSpacing(10),
            SuggestedQuestion(onTap: () {}, title: 'Suggested Question....'),
            const ColSpacing(10),
            SuggestedQuestion(onTap: () {}, title: 'Suggested Question....'),
            const ColSpacing(10),
            SuggestedQuestion(onTap: () {}, title: 'Suggested Question....'),
          ],
        ),
      ),
    );
  }
}
