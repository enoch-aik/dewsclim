import 'package:dewsclim/lib.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:dewsclim/src/router/navigator.dart';
import 'package:dewsclim/src/router/router.dart';
import 'package:dewsclim/src/widgets/margin.dart';

@RoutePage(name: 'choosePreferredLanguage')
class ChoosePreferredLanguageScreen extends HookConsumerWidget {
  const ChoosePreferredLanguageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLanguage = useState<String>('English');
    final languages = ['English', 'Pidgin English', 'Hausa', 'Igbo', 'Yoruba'];
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48),
            child: Text(
              'Choose your preferred language?',
              textAlign: TextAlign.center,
              style: AppStyles.bodyTextStyle.copyWith(
                  fontSize: 24,
                  color: context.primary,
                  fontWeight: FontWeight.w500),
            ),
          ),
          ...List.generate(languages.length, (index) {
            bool isSelected = selectedLanguage.value == languages[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: RadioListTile.adaptive(
                title: Text(
                  languages[index],
                  style: AppStyles.bodyTextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                      color:
                          isSelected ? AppColors.baseWhite : context.primary),
                ),
                activeColor: AppColors.baseWhite,
                fillColor: MaterialStateProperty.all(
                    isSelected ? AppColors.baseWhite : context.primary),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: context.primary)),
                tileColor: selectedLanguage.value == languages[index]
                    ? context.primary
                    : null,
                value: languages[index],
                groupValue: selectedLanguage.value,
                onChanged: (value) {
                  selectedLanguage.value = value!;
                },
              ),
            );
          }),
          const ColSpacing(140),
          SizedBox(height: 50,
            child: FilledButton(
              onPressed: () {
                // AppNavigator.of(context).push(Onboarding());
                AppNavigator.of(context).push(const FullNameReg());
              },
              child: const Text('Continue'),
            ),
          ),
        ],
      ),
    );
  }
}
