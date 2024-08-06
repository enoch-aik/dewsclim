import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/assets/svg/svg.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/widgets/margin.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage(name: 'userFeedback')
class UserFeedbackScreen extends HookConsumerWidget {
  const UserFeedbackScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<List<String>> messages = useState<List<String>>([]);
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
              const ColSpacing(16),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Feedback',
                    style: AppStyles.bodyTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.neutral900)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Have any question or information, Let’s hear from you',
                    style: AppStyles.bodyTextStyle.copyWith(
                        fontSize: 14,
                        color: AppColors.neutral900,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Type your message here',
                      hintStyle: AppStyles.bodyTextStyle.copyWith(
                          fontSize: 14,
                          color: AppColors.neutral500,
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: AppColors.neutral300),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: AppColors.primary),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: AppColors.primary),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(sendMessageSvg),
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}
